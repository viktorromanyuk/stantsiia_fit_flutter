import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/core/supabase/supabase.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';

class ScheduleService {
  const ScheduleService();

  List<ScheduleEventModel> filterSchedule(
    List<ScheduleEventModel> schedule,
    DateTime date,
    TrainingTypeEnum? filter,
  ) {
    final now = DateTime.now();

    return schedule
        .where((event) {
          final parts = event.startTime.split(':');
          final hours = parts.isNotEmpty ? int.tryParse(parts[0]) ?? 0 : 0;
          final minutes = parts.length > 1 ? int.tryParse(parts[1]) ?? 0 : 0;

          final eventDate = date.copyWith(
            hour: hours,
            minute: minutes,
            second: 0,
          );

          return event.weekDay == date.weekday % 7 && !eventDate.isBefore(now);
        })
        .where((event) => filter == null || event.training.type == filter)
        .toList();
  }

  Future<List<ScheduleEventModel>> getSchedule() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return supabase
        .from('fit_schedule')
        .select(
          'id, weekDay, startTime, '
          'training:fit_trainings(*), '
          'trainer:fit_trainers(*)',
        )
        .eq('hidden', false)
        .order('startTime', ascending: true)
        .withConverter(
          (data) => data.map(ScheduleEventModel.fromJson).toList(),
        );
  }

  Future<Map<int, int>> getAttendeesCount(DateTime date) async {
    try {
      final formattedDate = formatDate(date, AppDateFormats.monthDayYearWithDash);
      final response = await supabase.functions.invoke(
        'fit-get-schedule-event-attendees-count',
        body: {
          'start': formattedDate,
          'end': formattedDate,
        },
      );

      final data = response.data;

      if (data is Map && data.isNotEmpty) {
        final firstValue = data.values.first;

        if (firstValue is Map) {
          final attendeesCount = <int, int>{};

          firstValue.forEach((key, value) {
            final eventId = int.tryParse('$key');
            final count = (value as num?)?.toInt() ?? 0;

            if (eventId != null) {
              attendeesCount[eventId] = count;
            }
          });

          return attendeesCount;
        }
      }
    } catch (_) {}

    return {};
  }
}

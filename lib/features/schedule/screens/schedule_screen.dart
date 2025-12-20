import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';

import '../widgets/widgets.dart';

@RoutePage()
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime _selectedDate = DateTime.now();
  late Future<List<ScheduleEventModel>> _scheduleFuture;
  late Future<Map<int, int>> _attendeesFuture;

  String get activeMonth => formatDate(_selectedDate, AppDateFormats.monthLong).toCapitalCase();

  String get activeYear => formatDate(_selectedDate, AppDateFormats.year);

  @override
  void initState() {
    super.initState();
    _scheduleFuture = _getSchedule();
    _attendeesFuture = _getAttendeesCount(_selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ScheduleEventModel>>(
      future: _scheduleFuture,
      builder: (context, scheduleSnapshot) {
        final schedule = scheduleSnapshot.data ?? const <ScheduleEventModel>[];

        return FutureBuilder<Map<int, int>>(
          future: _attendeesFuture,
          builder: (context, attendeesSnapshot) {
            final attendeesCount = attendeesSnapshot.data ?? const <int, int>{};
            final filteredSchedule = _filteredSchedule(schedule);

            return AppScaffold(
              theme: ThemeMode.dark,
              scrollable: !scheduleSnapshot.isWaiting || filteredSchedule.isEmpty,
              onRefresh: _refresh,
              appBar: AppSliverAppBar(
                withBorder: true,
                withBorderRadius: true,
                title: '$activeMonth $activeYear',
                bottomBuilder: (context, constraints, tColor) => PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: CalendarWeek(
                      value: _selectedDate,
                      onChanged: _refreshAttendees,
                    ),
                  ),
                ),
              ),
              children: [
                AppSliverFutureState(
                  isWaiting: scheduleSnapshot.isWaiting,
                  isEmpty: filteredSchedule.isEmpty,
                  hasError: scheduleSnapshot.hasError,
                  loader: const ScheduleLoader(),
                  onRefresh: _refresh,
                  emptyText: 'Немає доступних тренувань',
                  content: ScheduleTrainingsList(
                    scheduleEvents: filteredSchedule,
                    attendeesCount: attendeesCount,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  List<ScheduleEventModel> _filteredSchedule(
    List<ScheduleEventModel> schedule,
  ) {
    final now = DateTime.now();

    return schedule.where((event) {
      final parts = event.startTime.split(':');
      final hours = parts.isNotEmpty ? int.tryParse(parts[0]) ?? 0 : 0;
      final minutes = parts.length > 1 ? int.tryParse(parts[1]) ?? 0 : 0;

      final eventDate = _selectedDate.copyWith(
        hour: hours,
        minute: minutes,
        second: 0,
      );

      return event.weekDay == _selectedDate.weekday % 7 && !eventDate.isBefore(now);
    }).toList();
  }

  Future<List<ScheduleEventModel>> _getSchedule() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return Supabase.instance.client
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

  Future<Map<int, int>> _getAttendeesCount(DateTime date) async {
    try {
      final formattedDate = formatDate(date, AppDateFormats.monthDayYearWithDash);
      final response = await Supabase.instance.client.functions.invoke(
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

  Future<void> _refresh() async {
    setState(() {
      _scheduleFuture = _getSchedule();
      _attendeesFuture = _getAttendeesCount(_selectedDate);
    });

    await Future.wait([_scheduleFuture, _attendeesFuture]);
  }

  Future<void> _refreshAttendees(DateTime date) async {
    setState(() {
      _selectedDate = date;
      _attendeesFuture = _getAttendeesCount(date);
    });

    await _attendeesFuture;
  }
}


// TODO: add api services, refactor schedule screen
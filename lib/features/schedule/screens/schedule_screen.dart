import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/features/schedule/services/services.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';

import 'package:stantsiia_fit_flutter/features/trainings/widgets/widgets.dart';
import '../widgets/widgets.dart';

@RoutePage()
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  TrainingTypeEnum? _selectedFilter;
  DateTime _selectedDate = DateTime.now();

  late Future<List<ScheduleEventModel>> _scheduleFuture;
  late Future<Map<int, int>> _attendeesFuture;

  late final ScheduleService _scheduleService = const ScheduleService();

  String get activeMonth => formatDate(_selectedDate, AppDateFormats.monthLong).toCapitalCase();

  String get activeYear => formatDate(_selectedDate, AppDateFormats.year);

  @override
  void initState() {
    super.initState();
    _scheduleFuture = _scheduleService.getSchedule();
    _attendeesFuture = _scheduleService.getAttendeesCount(_selectedDate);
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
            final filteredSchedule = _scheduleService.filterSchedule(schedule, _selectedDate, _selectedFilter);

            return AppScaffold(
              scrollable: !scheduleSnapshot.isWaiting && filteredSchedule.isNotEmpty,
              onRefresh: _refresh,
              appBar: AppSliverAppBar(
                withBorderRadius: true,
                title: '$activeMonth $activeYear',
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: CalendarWeek(
                      value: _selectedDate,
                      onChanged: _refreshAttendees,
                    ),
                  ),
                ),
                actions: [
                  PingingFilterButton(
                    isActive: _selectedFilter != null,
                    onPressed: () => showTrainingsFilterBottomSheet(
                      context: context,
                      selectedFilter: _selectedFilter,
                      onChanged: (value) => setState(() => _selectedFilter = value),
                    ),
                  ),
                ],
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

  Future<void> _refresh() async {
    setState(() {
      _scheduleFuture = _scheduleService.getSchedule();
      _attendeesFuture = _scheduleService.getAttendeesCount(_selectedDate);
    });

    await Future.wait([_scheduleFuture, _attendeesFuture]);
  }

  Future<void> _refreshAttendees(DateTime date) async {
    setState(() {
      _selectedDate = date;
      _attendeesFuture = _scheduleService.getAttendeesCount(date);
    });

    await _attendeesFuture;
  }
}

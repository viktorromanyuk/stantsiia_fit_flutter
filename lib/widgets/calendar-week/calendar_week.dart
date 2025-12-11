import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

part 'calendar_week_day_button.dart';

typedef WeekDay = ({DateTime dateRaw, bool disabled, String date, String name});

class CalendarWeek extends StatefulWidget {
  const CalendarWeek({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final DateTime value;
  final void Function(DateTime) onChanged;

  @override
  State<CalendarWeek> createState() => _CalendarWeekState();
}

class _CalendarWeekState extends State<CalendarWeek> {
  late final PageController _pageViewController;

  DateTime get currentDay => DateTime.now();

  DateTime get lastReserveHour => DateTime(
    currentDay.year,
    currentDay.month,
    currentDay.day,
    21,
    0,
    0,
  );

  bool get isAfterReserveHour => currentDay.isAfter(lastReserveHour);

  late final List<List<WeekDay>> _availableWeeks;
  int _activeWeekIndex = 0;

  @override
  void initState() {
    super.initState();
    final today = DateTime.now();
    _availableWeeks = [
      _generateWeek(today),
      _generateWeek(today.addWeeks(1)),
      _generateWeek(today.addWeeks(2)),
    ];
    _pageViewController = PageController(initialPage: _activeWeekIndex);
    _scheduleInitialSelectionShift();
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyles.colors.whiteMilk,
        borderRadius: BorderRadius.all(AppStyles.borderRadius.full),
      ),
      height: 64,
      child: PageView(
        controller: _pageViewController,
        onPageChanged: (index) {
          setState(() {
            _activeWeekIndex = index;
          });
        },
        children: _availableWeeks.map(_buildWeekPage).toList(),
      ),
    );
  }

  List<WeekDay> _generateWeek(DateTime day) {
    final start = day.startOfISOWeek;
    final end = start.addDays(7);
    final interval = start
        .eachDay(end)
        .map(
          (day) => (
            dateRaw: day,
            disabled:
                day.isSameDay(currentDay) && isAfterReserveHour ||
                day.isBefore(currentDay.addDays(-1)) ||
                day.isAfter(currentDay.addWeeks(2)),
            date: formatDate(day, AppDateFormats.dayOfMonth),
            name: formatDate(day, AppDateFormats.weekdayShort).toCapitalCase(),
          ),
        )
        .toList();

    return interval;
  }

  Widget _buildWeekPage(List<WeekDay> week) {
    final today = DateTime.now();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: week
            .map(
              (day) => Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: CalendarWeekDayButton(
                    day: day,
                    isSelected: day.dateRaw.isSameDay(widget.value),
                    isToday: day.dateRaw.isSameDay(today),
                    onPressed: (selectedDay) => widget.onChanged(selectedDay.dateRaw),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  void _scheduleInitialSelectionShift() {
    if (!isAfterReserveHour || !widget.value.isSameDay(currentDay)) {
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }

      final nextDay = widget.value.addDays(1);
      widget.onChanged(nextDay);

      final shouldGoToNextWeek =
          nextDay.weekday == DateTime.sunday &&
          _activeWeekIndex < _availableWeeks.length - 1 &&
          _pageViewController.hasClients;

      if (shouldGoToNextWeek) {
        _pageViewController.jumpToPage(_activeWeekIndex + 1);
      }
    });
  }
}

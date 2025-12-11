import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

import '../widgets/widgets.dart';

@RoutePage()
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime selectedDate = DateTime.now();

  String get activeMonth => formatDate(selectedDate, AppDateFormats.monthLong).toCapitalCase();
  String get activeYear => formatDate(selectedDate, AppDateFormats.year);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.dark,
      appBar: AppSliverAppBar(
        withBorder: true,
        withBorderRadius: true,
        title: '$activeMonth $activeYear',
        bottomBuilder: (context, constraints, tColor) => PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: CalendarWeek(
              value: selectedDate,
              onChanged: (date) => setState(() => selectedDate = date),
            ),
          ),
        ),
      ),
      children: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          sliver: ScheduleTrainingsList(),
        ),
      ],
    );
  }
}

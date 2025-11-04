import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

@RoutePage()
class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.dark,
      appBar: AppSliverAppBar(
        title: 'Жовтень',
        flexibleSpaceTitle: 'Розклад',
      ),
      children: [
        SliverToBoxAdapter(
          child: AppButton(
            onPressed: () {},
            text: 'Записатись',
          ),
        ),
        SliverToBoxAdapter(
          child: CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            onDateChanged: (date) {},
          ),
        ),
      ],
    );
  }
}

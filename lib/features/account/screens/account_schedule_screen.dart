import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

@RoutePage()
class AccountScheduleScreen extends StatelessWidget {
  const AccountScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.light,
      appBar: AppSliverAppBar(
        title: 'Мій розклад',
      ),
    );
  }
}

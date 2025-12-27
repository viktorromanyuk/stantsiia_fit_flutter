import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

@RoutePage()
class AccountTrainingsPackagesScreen extends StatelessWidget {
  const AccountTrainingsPackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppSliverAppBar(
        title: 'Мої абонементи',
      ),
    );
  }
}

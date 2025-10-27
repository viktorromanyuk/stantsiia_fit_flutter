import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class TrainingsPackagesScreen extends StatelessWidget {
  const TrainingsPackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.light,
      appBar: AppSliverAppBar(title: 'Абонементи'),
      children: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          sliver: SliverList.separated(
            itemBuilder: (BuildContext context, int index) => TrainingsPackage(),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
            itemCount: 10, // always specify this!
          ),
        ),
      ],
    );
  }
}

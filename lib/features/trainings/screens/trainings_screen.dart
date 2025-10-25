import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class TrainingsScreen extends StatelessWidget {
  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.dark,
      appBar: AppSliverAppBar(title: 'Тренування'),
    );
  }
}

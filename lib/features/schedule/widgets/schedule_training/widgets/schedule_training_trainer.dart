import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class ScheduleTrainingTrainer extends StatelessWidget {
  const ScheduleTrainingTrainer({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: AppStyles.fontSize.sm.copyWith(
        height: AppStyles.lineHeight.condensed,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

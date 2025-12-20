import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class ScheduleTrainingTitle extends StatelessWidget {
  const ScheduleTrainingTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Text(
        title.toUpperCase(),
        style: AppStyles.fontSize.md.copyWith(
          fontFamily: FontFamily.unbounded,
          height: AppStyles.lineHeight.condensed,
        ),
      ),
    );
  }
}

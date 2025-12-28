import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class ScheduleTrainingTime extends StatelessWidget {
  const ScheduleTrainingTime({super.key, required this.time, required this.duration});

  final String time;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          time,
          style: AppFontSize.fs14.copyWith(
            fontFamily: FontFamily.unbounded,
            height: AppLineHeight.condensed,
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Text(
            '($duration хв.)',
            style: AppFontSize.fs14.copyWith(
              fontWeight: FontWeight.w500,
              height: AppLineHeight.none,
            ),
          ),
        ),
      ],
    );
  }
}

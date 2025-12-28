import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

import 'widgets/widgets.dart';

class ScheduleTraining extends StatelessWidget {
  const ScheduleTraining({super.key, required this.scheduleEvent});

  final ScheduleEventWithConfig scheduleEvent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.grayDarkAccent,
        border: Border.all(color: AppColors.whiteMilk),
        borderRadius: BorderRadius.all(AppBorderRadius.full),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ScheduleTrainingTitle(title: scheduleEvent.event.training.name),
                ScheduleTrainingTrainer(name: scheduleEvent.event.trainer.name),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ScheduleTrainingTime(
                time: scheduleEvent.event.startTime,
                duration: scheduleEvent.event.training.duration,
              ),
              ScheduleTrainingAvailableSpots(spots: scheduleEvent.trainingsLeft),
            ],
          ),
        ],
      ),
    );
  }
}

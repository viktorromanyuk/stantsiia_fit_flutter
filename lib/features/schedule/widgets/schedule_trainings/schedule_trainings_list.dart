import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

part 'schedule_training_item.dart';
part 'schedule_training_trainer.dart';
part 'schedule_training_title.dart';
part 'schedule_training_time.dart';
part 'schedule_training_available_spots.dart';

class ScheduleTrainingsList extends StatelessWidget {
  const ScheduleTrainingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 20,
      itemBuilder: (context, index) => Transform.translate(
        offset: Offset(0, index > 0 ? (-1 * index).toDouble() : 0),
        child: ScheduleTrainingsItem(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ScheduleTrainingsSectionTitle(title: 'HIIT'),
                    ScheduleTrainingTrainer(name: 'Yebeisha Anasteisha'),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScheduleTrainingTime(time: '07:00', duration: 45),
                  ScheduleTrainingAvailableSpots(spots: 10),
                ],
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (_, __) => Divider(height: 0),
    );
  }
}

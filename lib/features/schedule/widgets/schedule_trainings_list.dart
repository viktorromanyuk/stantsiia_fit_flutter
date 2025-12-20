import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'schedule_training/schedule_training.dart';

typedef TrainingTypeConfig = ({String buttonText, EntityTypeEnum entityType});

class ScheduleTrainingsList extends StatelessWidget {
  const ScheduleTrainingsList({
    super.key,
    required this.scheduleEvents,
    required this.attendeesCount,
  });

  final List<ScheduleEventModel> scheduleEvents;
  final Map<int, int> attendeesCount;

  static final Map<TrainingTypeEnum, TrainingTypeConfig> trainingTypeConfig = {
    TrainingTypeEnum.train: (buttonText: 'Тренуватись', entityType: EntityTypeEnum.fitness),
    TrainingTypeEnum.relax: (buttonText: 'Розслаблятись', entityType: EntityTypeEnum.fitness),
    TrainingTypeEnum.dance: (buttonText: 'Танцювати', entityType: EntityTypeEnum.dance),
  };

  List<ScheduleEventWithConfig> get scheduleEventsWithConfig => scheduleEvents.map(
    (event) {
      final trainingsLeft = event.training.maxAttendees - (attendeesCount[event.id] ?? 0);

      return (
        event: event.copyWith(
          startTime: event.startTime.substring(0, event.startTime.length - 3),
        ),
        buttonText: trainingTypeConfig[event.training.type]!.buttonText,
        entityType: trainingTypeConfig[event.training.type]!.entityType,
        trainingsLeft: trainingsLeft < 0 ? 0 : trainingsLeft,
      );
    },
  ).toList();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      sliver: SliverList.separated(
        itemCount: scheduleEventsWithConfig.length,
        itemBuilder: (context, index) {
          final scheduleEvent = scheduleEventsWithConfig[index];

          return Transform.translate(
            offset: Offset(0, index > 0 ? (-1 * index).toDouble() : 0),
            child: ScheduleTraining(scheduleEvent: scheduleEvent),
          );
        },
        separatorBuilder: (_, __) => Divider(height: 0),
      ),
    );
  }
}

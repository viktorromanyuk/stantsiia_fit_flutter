import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

import 'training_card.dart';
import 'training_card_header.dart';

class TrainingScreenCard extends StatelessWidget {
  const TrainingScreenCard({
    super.key,
    required this.training,
  });

  final TrainingModel training;

  TrainingTypeEnum get type => TrainingTypeEnum.fromString(training.type.value);
  TrainingLevelEnum get level => training.level;

  @override
  Widget build(BuildContext context) {
    return TrainingCard(
      height: 400,
      type: type,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TrainingCardHeader(level: level, type: type, duration: training.duration),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Text(
              training.label,
              style: AppStyles.fontSize.fs20.copyWith(
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.unbounded,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

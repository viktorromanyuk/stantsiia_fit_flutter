import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class TrainingCardHeader extends StatelessWidget {
  const TrainingCardHeader({
    super.key,
    required this.level,
    required this.type,
    required this.duration,
  });

  final TrainingLevelEnum level;
  final TrainingTypeEnum type;
  final int duration;

  ({String title, String value}) get trainingLevelInfo => getTrainingLevelText(level, type);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppStyles.colors.black.withValues(alpha: 0.4),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trainingLevelInfo.title,
                style: AppStyles.fontSize.md.copyWith(
                  color: AppStyles.colors.whiteMilk,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                trainingLevelInfo.value,
                style: AppStyles.fontSize.lg.copyWith(
                  color: AppStyles.colors.whiteMilk,
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Тривалість',
                style: AppStyles.fontSize.md.copyWith(
                  color: AppStyles.colors.whiteMilk,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$duration хвилин',
                style: AppStyles.fontSize.lg.copyWith(
                  color: AppStyles.colors.whiteMilk,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

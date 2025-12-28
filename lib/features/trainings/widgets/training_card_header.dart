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
      color: AppColors.black.withValues(alpha: 0.4),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trainingLevelInfo.title,
                style: AppFontSize.fs16.copyWith(
                  color: AppColors.whiteMilk, // TODO: make default text color whiteMilk
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                trainingLevelInfo.value,
                style: AppFontSize.fs18.copyWith(
                  color: AppColors.whiteMilk,
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Тривалість',
                style: AppFontSize.fs16.copyWith(
                  color: AppColors.whiteMilk,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$duration хвилин',
                style: AppFontSize.fs18.copyWith(
                  color: AppColors.whiteMilk,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

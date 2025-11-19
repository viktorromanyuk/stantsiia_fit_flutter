import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/router/router.gr.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

import 'training_card.dart';
import 'training_card_header.dart';

class TrainingInfoDialog extends StatelessWidget {
  const TrainingInfoDialog({
    super.key,
    required this.training,
  });

  final TrainingModel training;

  ({String title, String value}) get trainingLevelInfo => getTrainingLevelText(level, type);

  TrainingTypeEnum get type => TrainingTypeEnum.fromString(training.type.value);
  TrainingLevelEnum get level => training.level;

  @override
  Widget build(BuildContext context) {
    return DialogContent(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TrainingCard(
            height: 200,
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
                    style: AppStyles.fontSize.xl4.copyWith(
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.unbounded,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          Expanded(
            child: SingleChildScrollView(
              child: Text(
                training.description,
                style: AppStyles.fontSize.md.copyWith(
                  color: AppStyles.colors.whiteMilk,
                ),
              ),
            ),
          ),
        ],
      ),
      footer: Column(
        children: [
          AppButton(
            theme: ThemeMode.dark,
            onPressed: () {
              Navigator.of(context).pop();
              context.router.navigate(const ScheduleRoute());
            },
            text: 'Записатись',
          ),
        ],
      ),
    );
  }
}

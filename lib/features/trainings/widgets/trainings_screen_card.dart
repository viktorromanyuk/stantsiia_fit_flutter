import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/enums.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

import 'training_card.dart';
import 'training_card_header.dart';

class TrainingScreenCard extends StatelessWidget {
  const TrainingScreenCard({
    super.key,
    required this.data,
  });

  // TODO: add models
  final Map<String, dynamic> data;

  EntityType get type => EntityType.fromString(data['type']);
  TrainingLevel get level => TrainingLevel.fromString(data['level']);

  @override
  Widget build(BuildContext context) {
    return TrainingCard(
      height: 400,
      type: type,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TrainingCardHeader(level: level, type: type, duration: data['duration']),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Text(
              data['label'] ?? '',
              style: AppStyles.fontSize.xl4.copyWith(
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

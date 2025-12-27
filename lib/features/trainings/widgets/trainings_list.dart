import 'package:flutter/material.dart';
import './trainings_screen_card.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';

class TrainingsList extends StatelessWidget {
  const TrainingsList({
    super.key,
    required this.trainings,
    required this.onItemTap,
  });

  final List<TrainingModel> trainings;
  final Function(TrainingModel) onItemTap;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      sliver: SliverList.separated(
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () => onItemTap(trainings[index]),
          child: TrainingScreenCard(training: trainings[index]),
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 32),
        itemCount: trainings.length,
      ),
    );
  }
}

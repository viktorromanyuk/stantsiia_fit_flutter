import 'package:flutter/material.dart';
import './trainings_card_shimmer.dart';

class TrainingsSliverLoader extends StatelessWidget {
  const TrainingsSliverLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
      sliver: SliverList.separated(
        itemBuilder: (BuildContext context, int index) => TrainingsCardShimmer(),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 32),
        itemCount: 2,
      ),
    );
  }
}

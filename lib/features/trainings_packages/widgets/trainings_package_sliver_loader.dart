import 'package:flutter/material.dart';
import './trainings_package_shimmer.dart';

class TrainingsPackageSliverLoader extends StatelessWidget {
  const TrainingsPackageSliverLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      // TODO: move padding to be reusable
      // TODO create sliver loader widget
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),

      sliver: SliverList.separated(
        itemBuilder: (BuildContext context, int index) => TrainingsPackageShimmer(),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
        itemCount: 4,
      ),
    );
  }
}

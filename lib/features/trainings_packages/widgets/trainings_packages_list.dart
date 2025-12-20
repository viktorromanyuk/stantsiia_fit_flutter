import 'package:flutter/material.dart';
import './trainings_package.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';

class TrainingsPackagesList extends StatelessWidget {
  const TrainingsPackagesList({
    super.key,
    required this.packages,
    required this.onItemTap,
  });

  final List<TrainingsPackageModel> packages;
  final Function(TrainingsPackageModel) onItemTap;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList.separated(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => onItemTap(packages[index]),
          child: TrainingsPackage(package: packages[index]),
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 20),
        itemCount: packages.length,
      ),
    );
  }
}

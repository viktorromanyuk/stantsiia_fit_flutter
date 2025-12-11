import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class TrainingsPackageShimmer extends StatelessWidget {
  const TrainingsPackageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: AppShimmer(
            theme: ThemeMode.dark,
            borderRadius: AppStyles.borderRadius.xl5.x,
          ),
        ),
        AppShimmer.builder(
          theme: ThemeMode.light,
          builder: (context, color) => Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppShimmerItem(
                  color: color,
                  height: 20,
                  width: 200,
                ),

                const SizedBox(height: 16),

                AppShimmerItem(
                  color: color,
                  height: 20,
                  width: 60,
                ),

                const SizedBox(height: 32),
                AppShimmerItem(
                  color: color,
                  height: 14,
                  width: 160,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

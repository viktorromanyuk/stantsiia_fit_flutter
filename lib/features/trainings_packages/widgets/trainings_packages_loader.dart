import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class TrainingsPackagesLoader extends StatelessWidget {
  const TrainingsPackagesLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      sliver: SliverList.separated(
        itemBuilder: (BuildContext context, int index) => Stack(
          children: [
            Positioned.fill(
              child: AppShimmer(
                theme: ThemeMode.dark,
                borderRadius: AppStyles.borderRadius.r30.x,
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
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
        itemCount: 4,
      ),
    );
  }
}

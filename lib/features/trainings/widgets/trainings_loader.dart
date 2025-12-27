import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class TrainingsLoader extends StatelessWidget {
  const TrainingsLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
      sliver: SliverList.separated(
        itemBuilder: (BuildContext context, int index) => Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(AppStyles.borderRadius.r30),
            boxShadow: AppStyles.boxShadow.glow(AppStyles.colors.whiteMilk),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: AppShimmer(
                  theme: ThemeMode.dark,
                  borderRadius: AppStyles.borderRadius.r30.x,
                ),
              ),

              AppShimmer.builder(
                theme: ThemeMode.light,
                builder: (context, color) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: color, width: 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            spacing: 19,
                            children: [
                              AppShimmerItem(
                                color: color,
                                height: 12,
                                width: 100,
                              ),
                              AppShimmerItem(
                                color: color,
                                height: 16,
                                width: 100,
                              ),
                            ],
                          ),
                          Column(
                            spacing: 19,
                            children: [
                              AppShimmerItem(
                                color: color,
                                height: 12,
                                width: 100,
                              ),
                              AppShimmerItem(
                                color: color,
                                height: 16,
                                width: 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: AppShimmerItem(
                        color: color,
                        height: 32,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 32),
        itemCount: 2,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class ScheduleLoader extends StatelessWidget {
  const ScheduleLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      sliver: SliverList.separated(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: Offset(0, index > 0 ? (-1 * index).toDouble() : 0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: AppStyles.colors.grayDark,
                border: Border.all(color: AppStyles.colors.whiteMilk),
                borderRadius: BorderRadius.all(AppStyles.borderRadius.full),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: AppShimmer(
                      height: 70,
                      theme: ThemeMode.dark,
                      borderRadius: AppStyles.borderRadius.full.x,
                    ),
                  ),
                  AppShimmer.builder(
                    theme: ThemeMode.light,
                    builder: (context, color) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),

                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppShimmerItem(
                                  color: color,
                                  height: 16,
                                  width: 80,
                                ),
                                AppShimmerItem(
                                  color: color,
                                  height: 10,
                                  width: 130,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppShimmerItem(
                                color: color,
                                height: 16,
                                width: 110,
                              ),
                              AppShimmerItem(
                                color: color,
                                height: 10,
                                width: 130,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => Divider(height: 0),
      ),
    );
  }
}

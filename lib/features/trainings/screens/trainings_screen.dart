import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/enums.dart';

import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/features/trainings/widgets/widgets.dart';

import 'package:stantsiia_fit_flutter/styles/styles.dart';

class TrainingsScreen extends StatelessWidget {
  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.dark,
      appBar: AppSliverAppBar(title: 'Тренування'),
      children: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          sliver: SliverList.separated(
            itemBuilder: (BuildContext context, int index) => TrainingCard(
              height: 400,
              type: [EEntityType.fitness, EEntityType.dance, EEntityType.photo][index % 3],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppStyles.colors.black.withValues(alpha: 0.4),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Інтенсивність',
                              style: AppStyles.fontSize.sm.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Висока',
                              style: AppStyles.fontSize.lg.copyWith(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Тривалість',
                              style: AppStyles.fontSize.sm.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '45 хв',
                              style: AppStyles.fontSize.lg.copyWith(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Text(
                      'HIIT',
                      style: AppStyles.fontSize.xl4.copyWith(
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.unbounded,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 32),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

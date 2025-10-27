import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class TrainingsPackage extends StatelessWidget {
  const TrainingsPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppStyles.colors.grayDark,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Пробне тренування',
            style: (context.breakpoints.maxMd ? AppStyles.fontSize.xl : AppStyles.fontSize.xl2).copyWith(
              fontFamily: FontFamily.unbounded,
              color: AppStyles.colors.whiteMilk,
            ),
          ),

          const SizedBox(height: 6),

          RichText(
            text: TextSpan(
              style: (context.breakpoints.maxMd ? AppStyles.fontSize.xl : AppStyles.fontSize.xl2).copyWith(
                color: AppStyles.colors.purple100,
              ),
              children: [
                TextSpan(
                  text: '150',
                  style: TextStyle(fontFamily: FontFamily.unbounded),
                ),
                TextSpan(
                  text: '₴',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Text(
            'Термін дії - 1 місяць',
            style: (context.breakpoints.maxMd ? AppStyles.fontSize.md : AppStyles.fontSize.lg).copyWith(
              fontWeight: FontWeight.w500,
              color: AppStyles.colors.whiteMilk,
            ),
          ),
        ],
      ),
    );
  }
}

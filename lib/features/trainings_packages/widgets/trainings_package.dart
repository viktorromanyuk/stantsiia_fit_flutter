import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';

class TrainingsPackage extends StatelessWidget {
  const TrainingsPackage({super.key, required this.package});

  final TrainingsPackageModel package;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppStyles.colors.grayDarkAccent,
        border: Border.all(color: AppStyles.colors.whiteMilk),
        borderRadius: BorderRadius.all(AppStyles.borderRadius.r30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            package.name ?? '',
            style: (context.breakpoints.maxMd ? AppStyles.fontSize.fs20 : AppStyles.fontSize.fs20).copyWith(
              fontFamily: FontFamily.unbounded,
              color: AppStyles.colors.whiteMilk,
            ),
          ),

          const SizedBox(height: 6),

          RichText(
            text: TextSpan(
              style: (context.breakpoints.maxMd ? AppStyles.fontSize.fs20 : AppStyles.fontSize.fs20).copyWith(
                color: AppStyles.colors.purple100,
              ),
              children: [
                TextSpan(
                  text: package.price.toStringAsFixed(0),
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
            'Термін дії - ${numberToWord(package.duration, ['місяць', 'місяці', 'місяців', 'місяця'])}',

            style: (context.breakpoints.maxMd ? AppStyles.fontSize.fs16 : AppStyles.fontSize.fs18).copyWith(
              fontWeight: FontWeight.w500,
              color: AppStyles.colors.whiteMilk,
            ),
          ),
        ],
      ),
    );
  }
}

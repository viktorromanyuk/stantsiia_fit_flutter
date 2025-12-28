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
        color: AppColors.grayDarkAccent,
        border: Border.all(color: AppColors.whiteMilk),
        borderRadius: BorderRadius.all(AppBorderRadius.r30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            package.name ?? '',
            style: (context.breakpoints.maxMd ? AppFontSize.fs20 : AppFontSize.fs20).copyWith(
              fontFamily: FontFamily.unbounded,
              color: AppColors.whiteMilk,
            ),
          ),

          const SizedBox(height: 6),

          RichText(
            text: TextSpan(
              style: (context.breakpoints.maxMd ? AppFontSize.fs20 : AppFontSize.fs20).copyWith(
                color: AppColors.purple100,
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

            style: (context.breakpoints.maxMd ? AppFontSize.fs16 : AppFontSize.fs18).copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.whiteMilk,
            ),
          ),
        ],
      ),
    );
  }
}

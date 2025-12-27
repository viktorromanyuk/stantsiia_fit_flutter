import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class Empty extends StatelessWidget {
  const Empty({super.key, this.description = 'Немає даних', required this.onRefresh});

  final String description;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            AppIcon(Assets.icons.empty, width: 160),
            Text(
              description,
              style: AppStyles.fontSize.fs14.copyWith(
                fontFamily: FontFamily.unbounded,
                fontWeight: FontWeight.w500,
                color: AppStyles.colors.whiteMilk,
              ),
            ),

            AppButton(
              onPressed: onRefresh,
              text: 'Оновити',
            ),
          ],
        ),
      ),
    );
  }
}

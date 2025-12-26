import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class ApiError extends StatelessWidget {
  const ApiError({super.key, required this.onRefresh});

  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text(
              'Помилка завантаження',
              style: AppStyles.fontSize.fs18.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            AppButton(
              onPressed: onRefresh,
              text: 'Спробувати знову',
            ),
          ],
        ),
      ),
    );
  }
}

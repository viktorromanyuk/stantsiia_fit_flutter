import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onPressed,
    required this.text,
    this.icon,
    this.height = 56,
    this.showArrow = false,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final String text;
  final double height;
  final bool showArrow;
  final bool isLoading;
  final SvgGenImage? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        child: Stack(
          children: [
            Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 12,
                children: [
                  AnimatedOpacity(
                    opacity: isLoading ? 0 : 1,
                    duration: Duration(milliseconds: 200),
                    child: Row(
                      spacing: 12,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (icon != null) AppIcon(icon!, width: 20),
                        Text(text),
                      ],
                    ),
                  ),
                  if (showArrow)
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: AppIcon(
                        Assets.icons.arrowRight,
                        width: 20,
                        color: AppColors.whiteMilk,
                      ),
                    ),
                ],
              ),
            ),

            if (isLoading)
              const Positioned.fill(
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.whiteMilk,
                    strokeWidth: 2,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

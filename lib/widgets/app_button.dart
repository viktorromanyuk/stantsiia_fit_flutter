import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.height = 64,
    this.theme = ThemeMode.light,
    this.showArrow = false,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final String text;
  final double height;
  final bool showArrow;
  final ThemeMode theme;
  final bool isLoading;
  bool get isLight => theme == ThemeMode.light;

  ({Color mainColor, Color contrastColor}) get config => (
    mainColor: isLight ? AppStyles.colors.whiteMilk : AppStyles.colors.grayDark,
    contrastColor: isLight ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          splashFactory: InkSparkle.splashFactory,
          side: BorderSide(color: config.contrastColor, width: 2),
          backgroundColor: config.mainColor,
          foregroundColor: config.contrastColor,
          textStyle: AppStyles.fontSize.fs18.copyWith(fontFamily: FontFamily.unbounded),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(AppStyles.borderRadius.full),
          ),
        ),
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
                    opacity: isLoading ? 0.3 : 1,
                    duration: Duration(milliseconds: 300),
                    child: Text(text),
                  ),
                  if (showArrow)
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: AppIcon(
                        Assets.icons.arrowRight,
                        width: 20,
                        color: config.contrastColor,
                      ),
                    ),
                ],
              ),
            ),

            if (isLoading)
              Positioned.fill(
                child: Center(
                  child: CircularProgressIndicator(
                    color: config.contrastColor,
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

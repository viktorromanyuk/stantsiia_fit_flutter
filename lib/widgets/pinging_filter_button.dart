import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class PingingFilterButton extends StatelessWidget {
  const PingingFilterButton({
    super.key,
    required this.isActive,
    required this.onPressed,
  });

  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final baseIcon = AppIcon(Assets.icons.filter, width: 20);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          icon: baseIcon,
          onPressed: onPressed,
        ),
        if (isActive)
          Positioned(
            top: 12,
            right: 16,
            child: SizedBox(
              width: 10,
              height: 10,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.orange100.withValues(alpha: 0.6),
                        ),
                      )
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .scale(
                        begin: const Offset(1, 1),
                        end: const Offset(2, 2),
                        duration: 800.ms,
                        curve: Curves.easeOut,
                      )
                      .fadeOut(
                        duration: 800.ms,
                      ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.orange100,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

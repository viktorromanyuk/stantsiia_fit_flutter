import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

typedef TrainingCardConfig = ({Color color, AssetGenImage image});

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.type,
    required this.child,
    required this.height,
  });

  final TrainingTypeEnum type;
  final Widget child;
  final double height;

  static final Map<TrainingTypeEnum, TrainingCardConfig> _cardConfig = {
    TrainingTypeEnum.train: (color: AppColors.orange100.withValues(alpha: 0.7), image: Assets.images.train),
    TrainingTypeEnum.dance: (color: AppColors.purple100.withValues(alpha: 0.7), image: Assets.images.dance),
    TrainingTypeEnum.relax: (color: AppColors.orange100.withValues(alpha: 0.7), image: Assets.images.train),
  };

  TrainingCardConfig get currentConfig => _cardConfig[type]!;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.grayDark,
        borderRadius: BorderRadius.all(AppBorderRadius.r30),
        boxShadow: AppBoxShadow.glow(currentConfig.color),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Positioned.fill(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(AppBorderRadius.r30),
              ),
              child: currentConfig.image.image(
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(AppBorderRadius.r30),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0, 0.7],
                  colors: [
                    AppColors.black.withValues(alpha: 0.85),
                    AppColors.transparent,
                  ],
                ),
              ),
            ),
          ),

          Positioned.fill(child: child),
        ],
      ),
    );
  }
}

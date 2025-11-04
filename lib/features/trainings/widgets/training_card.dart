import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/enums.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.type,
    required this.child,
    required this.height,
  });

  final EntityType type;
  final Widget child;
  final double height;

  static final Map<EntityType, ({Color color, String image})> _cardConfig = {
    EntityType.fitness: (color: AppStyles.colors.orange100.withValues(alpha: 0.7), image: 'train'),
    EntityType.dance: (color: AppStyles.colors.purple100.withValues(alpha: 0.7), image: 'dance'),
    EntityType.photo: (color: AppStyles.colors.orange100.withValues(alpha: 0.7), image: 'relax'),
    EntityType.unset: (color: AppStyles.colors.orange100.withValues(alpha: 0.7), image: 'train'),
  };

  @override
  Widget build(BuildContext context) {
    final config = _cardConfig[type] ?? _cardConfig[EntityType.unset]!;

    return Container(
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(AppStyles.borderRadius.xl4),
        boxShadow: [
          BoxShadow(
            color: config.color,
            blurRadius: 30,
            spreadRadius: -4,
          ),
          BoxShadow(
            color: config.color,
            blurRadius: 0,
            spreadRadius: 1.5,
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Positioned.fill(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(AppStyles.borderRadius.xl4),
              ),
              child: FadeInImage(
                placeholder: Assets.images.relax.provider(),
                image: AssetImage('assets/images/${config.image}.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(AppStyles.borderRadius.xl4),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0, 0.7],
                  colors: [
                    AppStyles.colors.black.withValues(alpha: 0.85),
                    AppStyles.colors.transparent,
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

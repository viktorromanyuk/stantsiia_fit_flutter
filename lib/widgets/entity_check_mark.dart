import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';

import 'package:stantsiia_fit_flutter/core/enums.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/app_icon.dart';

class EntityCheckMark extends StatelessWidget {
  const EntityCheckMark({
    super.key,
    this.type = EntityType.unset,
  });

  final EntityType type;

  static final Map<EntityType, Color> _borderConfig = {
    EntityType.fitness: AppStyles.colors.orange100,
    EntityType.dance: AppStyles.colors.purple100,
    EntityType.photo: AppStyles.colors.green100,
    EntityType.unset: AppStyles.colors.whiteMilk,
  };

  Color get currentBorderColor => _borderConfig[type]!;

  @override
  Widget build(BuildContext context) {
    final (containerSize, iconSize) = (() {
      final bp = context.breakpoints;
      if (bp.minLg) return (28.0, 10.0);
      if (bp.minMd) return (24.0, 8.0);
      return (20.0, 6.0);
    })();

    return Container(
      height: containerSize,
      width: containerSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: currentBorderColor, width: 2),
      ),
      alignment: Alignment.center,
      child: AppIcon(
        Assets.icons.checkMark,
        color: AppStyles.colors.whiteMilk,
        height: iconSize,
        width: iconSize,
      ),
    );
  }
}

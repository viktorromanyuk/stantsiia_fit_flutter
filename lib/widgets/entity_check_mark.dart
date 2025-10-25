import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';

import 'package:stantsiia_fit_flutter/core/enums.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/app_icon.dart';

class EntityCheckMark extends StatelessWidget {
  const EntityCheckMark({
    super.key,
    this.type = EEntityType.defaultType,
  });

  final EEntityType type;

  static final Map<EEntityType, Color> _borderConfig = {
    EEntityType.fitness: AppStyles.colors.orange100,
    EEntityType.dance: AppStyles.colors.purple100,
    EEntityType.photo: AppStyles.colors.green100,
    EEntityType.defaultType: AppStyles.colors.whiteMilk,
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

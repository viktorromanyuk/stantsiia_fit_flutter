import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

class Empty extends StatelessWidget {
  const Empty({super.key, this.description = 'Немає даних'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          AppIcon(Assets.icons.empty, width: 160),
          Text(
            description,
            style: AppStyles.fontSize.sm.copyWith(
              fontFamily: FontFamily.unbounded,
              fontWeight: FontWeight.w500,
              color: context.theme.isLight ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk,
            ),
          ),
        ],
      ),
    );
  }
}

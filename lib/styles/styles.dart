library;

import 'package:flutter/material.dart';
export 'package:stantsiia_fit_flutter/gen/fonts.gen.dart';

part 'colors.dart';

// Typography
part 'typography/font_size.dart';
part 'typography/line_height.dart';

// Decoration
part 'decoration/box_shadow.dart';

abstract final class AppStyles {
  static const colors = AppColors.values;
  static const fontSize = AppFontSize.values;
  static const boxShadow = AppBoxShadow.values;
  static const lineHeight = AppLineHeight.values;
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stantsiia_fit_flutter/gen/index.dart';
import 'package:stantsiia_fit_flutter/styles/colors.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(this.icon, {super.key, this.color});

  final SvgGenImage icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return icon.svg(theme: SvgTheme(currentColor: color ?? AppColors.grayDark));
  }
}

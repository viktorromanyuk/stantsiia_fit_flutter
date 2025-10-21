import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/styles/colors.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.color,
    this.height,
    this.width,
  });

  final SvgGenImage icon;
  final Color? color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? (width == null ? 24.0 : null),
      child: icon.svg(
        width: width,
        height: height,
        theme: SvgTheme(currentColor: color ?? IconTheme.of(context).color ?? AppColors.grayDark),
      ),
    );
  }
}

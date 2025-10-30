import 'package:flutter/material.dart';

class AppShimmerItem extends StatelessWidget {
  const AppShimmerItem({
    super.key,
    this.borderRadius,
    required this.color,
    this.width,
    this.height,
    this.child,
  });

  final double? borderRadius;
  final Color color;
  final double? width;
  final double? height;
  final Widget? child;

  double? get effectiveRadius {
    if (borderRadius != null) return borderRadius;
    if (height != null) return height! / 2;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: effectiveRadius != null ? Clip.antiAlias : Clip.none,
      decoration: BoxDecoration(
        color: color,
        borderRadius: effectiveRadius != null ? BorderRadius.circular(effectiveRadius!) : null,
      ),
      child: child,
    );
  }
}

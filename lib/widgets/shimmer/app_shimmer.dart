import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import './app_shimmer_item.dart';

typedef ShimmerColors = ({Color baseColor, Color highlightColor});

class AppShimmer extends StatelessWidget {
  const AppShimmer({
    super.key,
    this.borderRadius,
    this.theme = ThemeMode.light,
    this.width,
    this.height,
  }) : builder = null;

  /// Builder constructor that provides access to theme colors
  const AppShimmer.builder({
    super.key,
    this.theme = ThemeMode.light,
    required Widget Function(BuildContext context, Color color) this.builder,
  }) : borderRadius = null,
       width = null,
       height = null;

  final double? borderRadius;
  final ThemeMode theme;
  final double? width;
  final double? height;
  final Widget Function(BuildContext context, Color color)? builder;

  static const Map<ThemeMode, ShimmerColors> _themeConfig = {
    ThemeMode.light: (baseColor: Color(0xFFF0F2F5), highlightColor: Color(0xFFD1D1D1)),
    ThemeMode.dark: (baseColor: Color(0xFF1F212C), highlightColor: Color(0xFF2A2C37)),
  };

  ShimmerColors get currentTheme => _themeConfig[theme]!;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1000),
      loop: 2,
      baseColor: currentTheme.baseColor,
      highlightColor: currentTheme.highlightColor,
      child: builder != null
          ? builder!(context, currentTheme.baseColor)
          : AppShimmerItem(
              width: width,
              height: height,
              borderRadius: borderRadius,
              color: currentTheme.baseColor,
            ),
    );
  }
}

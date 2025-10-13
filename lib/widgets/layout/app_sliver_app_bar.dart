import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/colors.dart';
import 'package:stantsiia_fit_flutter/gen/index.dart';

typedef AppSliverAppBarLeadingBuilder = Widget Function(BuildContext context, Color tColor);
typedef AppSliverAppBarActionsBuilder = List<Widget> Function(BuildContext context, Color tColor);

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    super.key,
    required this.title,
    this.theme = ThemeMode.light,
    this.leadingBuilder,
    this.actionsBuilder,
  });

  final String title;
  final AppSliverAppBarLeadingBuilder? leadingBuilder;
  final AppSliverAppBarActionsBuilder? actionsBuilder;
  final ThemeMode theme;

  static const double _minToolbarHeight = kToolbarHeight;
  static const double _maxToolbarHeight = kToolbarHeight + 48;

  bool get isLightTheme => theme == ThemeMode.light;

  ({double tCollapsed, double tExpanded}) getAppBarState({
    required double offset,
    required double min,
    required double max,
  }) {
    final range = (max - min);
    if (range <= 0) return (tCollapsed: 1.0, tExpanded: 0.0);
    final tCollapsed = (offset / range).clamp(0.0, 1.0);
    return (tCollapsed: tCollapsed, tExpanded: 1.0 - tCollapsed);
  }

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final appBarState = getAppBarState(
          offset: constraints.scrollOffset,
          min: _minToolbarHeight,
          max: _maxToolbarHeight,
        );

        final tColor = Color.lerp(
          isLightTheme ? AppColors.grayDark : AppColors.whiteMilk,
          AppColors.whiteMilk,
          appBarState.tCollapsed,
        )!;

        final tColorInverted = Color.lerp(
          isLightTheme ? AppColors.grayDark : AppColors.whiteMilk,
          AppColors.grayDark,
          appBarState.tCollapsed,
        )!;

        final tBorderColor = Color.lerp(
          AppColors.transparent,
          isLightTheme ? AppColors.transparent : AppColors.grayLight,
          appBarState.tCollapsed,
        )!;

        return SliverAppBar.medium(
          pinned: true,
          expandedHeight: _maxToolbarHeight,
          backgroundColor: AppColors.grayDark,
          surfaceTintColor: AppColors.transparent,
          shape: Border(
            bottom: BorderSide(
              color: tBorderColor,
              width: 1,
            ),
          ),

          foregroundColor: tColor,
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.whiteMilk,
            ),
          ),

          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: const EdgeInsets.all(16),
            expandedTitleScale: 1,
            title: Opacity(
              opacity: appBarState.tExpanded,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: tColorInverted,
                ),
              ),
            ),
            background: ColoredBox(
              color: isLightTheme ? AppColors.whiteMilk : AppColors.grayDark,
            ),
          ),

          leading: leadingBuilder?.call(context, tColor),
          actions: actionsBuilder?.call(context, tColor),
        );
      },
    );
  }
}

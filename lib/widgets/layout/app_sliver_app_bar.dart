import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

typedef AppSliverAppBarLeadingBuilder = Widget Function(BuildContext context, Color tColor);
typedef AppSliverAppBarActionsBuilder = List<Widget> Function(BuildContext context, Color tColor);

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    super.key,
    required this.title,
    this.flexibleSpaceTitle,
    this.leadingBuilder,
    this.leadingWidth,
    this.actionsBuilder,
  });

  final String title;
  final String? flexibleSpaceTitle;
  final AppSliverAppBarLeadingBuilder? leadingBuilder;
  final double? leadingWidth;
  final AppSliverAppBarActionsBuilder? actionsBuilder;

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
    // TODO: use context.theme.isLight
    final isLightTheme = Theme.of(context).brightness == Brightness.light;
    const double _toolbarHeight = 48.0;
    final double _collapsedToolbarHeight = MediaQuery.paddingOf(context).top + _toolbarHeight;

    const double _expandedToolbarHeight = _toolbarHeight * 2;

    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final appBarState = getAppBarState(
          offset: constraints.scrollOffset,
          min: _toolbarHeight,
          max: _expandedToolbarHeight,
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
          AppColors.grayLight,
          appBarState.tCollapsed,
        )!;

        return SliverAppBar.medium(
          pinned: true,
          backgroundColor: AppColors.grayDark,
          toolbarHeight: _toolbarHeight,
          expandedHeight: _expandedToolbarHeight,
          collapsedHeight: _collapsedToolbarHeight,
          surfaceTintColor: AppColors.transparent,
          shape: Border(
            bottom: BorderSide(
              color: tBorderColor,
              width: 0.5,
            ),
          ),

          foregroundColor: tColor,
          title: Text(
            title,
            style: AppFontSize.xl.copyWith(
              height: AppLineHeight.none,
              fontFamily: FontFamily.unbounded,
              color: tColor,
            ),
          ),

          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: const EdgeInsets.all(16),
            expandedTitleScale: 1,
            title: Transform.translate(
              offset: Offset(0, appBarState.tCollapsed * -15),
              child: Opacity(
                opacity: appBarState.tExpanded,
                child: Text(
                  flexibleSpaceTitle ?? title,
                  style: TextStyle(
                    fontSize: context.breakpoints.minLg ? 40 : 30,
                    height: AppLineHeight.condensed,
                    fontFamily: FontFamily.unbounded,
                    color: tColorInverted,
                  ),
                ),
              ),
            ),
            background: ColoredBox(
              color: isLightTheme ? AppColors.whiteMilk : AppColors.grayDark,
            ),
          ),
          leadingWidth: leadingWidth,
          leading: leadingBuilder?.call(context, tColor),
          actions: actionsBuilder?.call(context, tColor),
        );
      },
    );
  }
}

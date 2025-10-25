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
    const double toolbarHeight = 48.0;
    final double collapsedToolbarHeight = MediaQuery.paddingOf(context).top + toolbarHeight;

    const double expandedToolbarHeight = toolbarHeight * 2;

    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final appBarState = getAppBarState(
          offset: constraints.scrollOffset,
          min: toolbarHeight,
          max: expandedToolbarHeight,
        );

        final tColor = Color.lerp(
          isLightTheme ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk,
          AppStyles.colors.whiteMilk,
          appBarState.tCollapsed,
        )!;

        final tColorInverted = Color.lerp(
          isLightTheme ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk,
          AppStyles.colors.grayDark,
          appBarState.tCollapsed,
        )!;

        final tBorderColor = Color.lerp(
          AppStyles.colors.transparent,
          AppStyles.colors.grayLight,
          appBarState.tCollapsed,
        )!;

        return SliverAppBar.medium(
          pinned: true,
          backgroundColor: AppStyles.colors.grayDark,
          toolbarHeight: toolbarHeight,
          expandedHeight: expandedToolbarHeight,
          collapsedHeight: collapsedToolbarHeight,
          surfaceTintColor: AppStyles.colors.transparent,
          shape: Border(
            bottom: BorderSide(
              color: tBorderColor,
              width: 0.5,
            ),
          ),

          foregroundColor: tColor,
          title: Text(
            title,
            style: AppStyles.fontSize.xl.copyWith(
              height: AppStyles.lineHeight.none,
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
                    height: AppStyles.lineHeight.condensed,
                    fontFamily: FontFamily.unbounded,
                    color: tColorInverted,
                  ),
                ),
              ),
            ),
            background: ColoredBox(
              color: isLightTheme ? AppStyles.colors.whiteMilk : AppStyles.colors.grayDark,
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

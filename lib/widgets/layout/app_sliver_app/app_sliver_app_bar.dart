import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

typedef SliverAppBarWidgetBuilder<T> =
    T Function(
      BuildContext context,
      SliverConstraints constraints,
      Color tColor,
    );

typedef AppBarState = ({double collapsed, double expanded});

typedef AppBarColors = ({
  Color toolbarForeground,
  Color borderColor,
  Color flexibleTitleColor,
  Color flexibleBackgroundColor,
});

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    super.key,
    required this.title,
    this.withBorder = true,
    this.withBorderRadius = false,
    this.flexibleSpaceTitle,
    this.leadingBuilder,
    this.leadingWidth,
    this.actionsBuilder,
    this.bottomBuilder,
  });

  final String title;
  final bool withBorder;
  final bool withBorderRadius;
  final String? flexibleSpaceTitle;
  final SliverAppBarWidgetBuilder<Widget>? leadingBuilder;
  final double? leadingWidth;
  final SliverAppBarWidgetBuilder<List<Widget>>? actionsBuilder;
  final SliverAppBarWidgetBuilder<PreferredSizeWidget>? bottomBuilder;

  static const double _kToolbarHeight = 48.0;
  static const double _kExpandedExtraHeight = 40.0;
  static const double _kTitleHorizontalPadding = 16.0;
  static const double _kBorderRadius = 32.0;
  static const double _kBlurSigma = 6.0;
  static const double _kTitleTranslateY = -15.0;

  AppBarState _getAppBarState({
    required double offset,
    required double min,
    required double max,
  }) {
    final range = (max - min);
    if (range <= 0) return (collapsed: 1.0, expanded: 0.0);
    final collapsed = (offset / range).clamp(0.0, 1.0);
    return (collapsed: collapsed, expanded: 1.0 - collapsed);
  }

  AppBarColors _getColors({
    required bool isLightTheme,
    required AppBarState appBarState,
  }) {
    final baseTextColor = isLightTheme ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk;
    final flexibleBackgroundColor = isLightTheme ? AppStyles.colors.whiteMilk : AppStyles.colors.grayDark;

    final toolbarForeground = Color.lerp(
      baseTextColor,
      AppStyles.colors.whiteMilk,
      appBarState.collapsed,
    )!;

    final borderColor = Color.lerp(
      AppStyles.colors.transparent,
      AppStyles.colors.grayLight,
      appBarState.collapsed,
    )!;

    final flexibleTitleColor = Color.lerp(
      baseTextColor,
      AppStyles.colors.grayDark,
      appBarState.collapsed,
    )!;

    return (
      toolbarForeground: toolbarForeground,
      borderColor: borderColor,
      flexibleTitleColor: flexibleTitleColor,
      flexibleBackgroundColor: flexibleBackgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaPadding = MediaQuery.paddingOf(context);
    final isLightTheme = context.theme.isLight;

    final toolbarHeight = (
      collapsed: mediaPadding.top + _kToolbarHeight,
      expanded: _kToolbarHeight + _kExpandedExtraHeight,
    );

    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final appBarState = _getAppBarState(
          offset: constraints.scrollOffset,
          min: _kToolbarHeight,
          max: toolbarHeight.expanded,
        );

        final colors = _getColors(
          isLightTheme: isLightTheme,
          appBarState: appBarState,
        );

        final bottom = bottomBuilder?.call(context, constraints, colors.toolbarForeground);
        final bottomHeight = bottom?.preferredSize.height ?? 0.0;

        final leading = leadingBuilder?.call(context, constraints, colors.toolbarForeground);
        final actions = actionsBuilder?.call(context, constraints, colors.toolbarForeground);

        final double collapsedHeight = toolbarHeight.collapsed + bottomHeight;
        final double expandedHeight = toolbarHeight.expanded + bottomHeight + (bottomHeight > 0 ? 16 : 0);

        final titlePadding = EdgeInsets.fromLTRB(
          _kTitleHorizontalPadding,
          0,
          _kTitleHorizontalPadding,
          bottomHeight > 0 ? (_kTitleHorizontalPadding + bottomHeight) : 0,
        );

        return SliverAppBar.medium(
          pinned: true,
          backgroundColor: AppStyles.colors.transparent,
          toolbarHeight: _kToolbarHeight,
          expandedHeight: expandedHeight,
          collapsedHeight: collapsedHeight,
          surfaceTintColor: AppStyles.colors.transparent,
          foregroundColor: colors.toolbarForeground,
          title: Text(
            title,
            style: AppStyles.fontSize.xl.copyWith(
              height: AppStyles.lineHeight.none,
              fontFamily: FontFamily.unbounded,
              color: colors.toolbarForeground,
            ),
          ),
          flexibleSpace: _buildFlexibleSpace(
            context: context,
            isLightTheme: isLightTheme,
            colors: colors,
            titlePadding: titlePadding,
            appBarState: appBarState,
            title: title,
            flexibleSpaceTitle: flexibleSpaceTitle,
          ),
          leadingWidth: leadingWidth,
          leading: leading,
          actions: actions,
          bottom: bottom,
        );
      },
    );
  }

  Widget _buildFlexibleSpace({
    required BuildContext context,
    required bool isLightTheme,
    required AppBarColors colors,
    required EdgeInsets titlePadding,
    required AppBarState appBarState,
    required String title,
    required String? flexibleSpaceTitle,
  }) {
    return RepaintBoundary(
      child: ClipRRect(
        borderRadius: withBorderRadius
            ? BorderRadius.vertical(bottom: Radius.circular(_kBorderRadius))
            : BorderRadius.zero,
        clipBehavior: Clip.antiAlias,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: _kBlurSigma, sigmaY: _kBlurSigma),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppStyles.colors.grayDark.withValues(alpha: isLightTheme ? 0.9 : 0.5),
              borderRadius: withBorderRadius
                  ? BorderRadius.vertical(bottom: Radius.circular(_kBorderRadius))
                  : BorderRadius.zero,
              border: Border(
                bottom: BorderSide(color: colors.borderColor, width: withBorderRadius ? 0.7 : 0.5),
              ),
            ),
            child: FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: titlePadding,
              expandedTitleScale: 1,
              title: Transform.translate(
                offset: Offset(0, appBarState.collapsed * _kTitleTranslateY),
                child: Opacity(
                  opacity: appBarState.expanded,
                  child: Text(
                    flexibleSpaceTitle ?? title,
                    style: TextStyle(
                      fontSize: context.breakpoints.minLg ? 40 : 30,
                      height: AppStyles.lineHeight.condensed,
                      fontFamily: FontFamily.unbounded,
                      color: colors.flexibleTitleColor,
                    ),
                  ),
                ),
              ),
              background: ColoredBox(color: colors.flexibleBackgroundColor),
            ),
          ),
        ),
      ),
    );
  }
}

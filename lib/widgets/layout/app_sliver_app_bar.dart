import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

typedef AppBarState = ({double collapsed, double expanded});

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    super.key,
    required this.title,
    this.withBorderRadius = false,
    this.flexibleSpaceTitle,
    this.leading,
    this.leadingWidth,
    this.actions,
    this.bottom,
  });

  final String title;
  final bool withBorderRadius;
  final String? flexibleSpaceTitle;
  final Widget? leading;
  final double? leadingWidth;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  static const double kToolbarHeight = 48.0;
  static const double _kExpandedExtraHeight = 40.0;
  static const double _kTitleHorizontalPadding = 16.0;
  static const double _kBorderRadius = 32.0;
  static const double _kBlurSigma = 7.0;
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

  @override
  Widget build(BuildContext context) {
    final mediaPadding = MediaQuery.paddingOf(context);

    final toolbarHeight = (
      collapsed: mediaPadding.top + kToolbarHeight,
      expanded: kToolbarHeight + _kExpandedExtraHeight,
    );

    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final bottomHeight = bottom?.preferredSize.height ?? 0.0;
        final double collapsedHeight = toolbarHeight.collapsed + bottomHeight;
        final double expandedHeight = toolbarHeight.expanded + bottomHeight;

        final appBarState = _getAppBarState(
          offset: constraints.scrollOffset,
          min: kToolbarHeight,
          max: toolbarHeight.expanded,
        );

        final borderColor = Color.lerp(
          AppColors.transparent,
          AppColors.whiteMilk,
          appBarState.collapsed,
        )!;

        final titlePadding = EdgeInsets.fromLTRB(
          _kTitleHorizontalPadding,
          0,
          _kTitleHorizontalPadding,
          bottomHeight > 0 ? (_kTitleHorizontalPadding + bottomHeight) : 0,
        );

        return SliverAppBar.medium(
          pinned: true,
          backgroundColor: AppColors.transparent,
          toolbarHeight: kToolbarHeight,
          expandedHeight: expandedHeight,
          collapsedHeight: collapsedHeight,
          surfaceTintColor: AppColors.transparent,
          foregroundColor: AppColors.whiteMilk,
          title: Text(
            title,
            style: AppFontSize.fs20.copyWith(
              height: AppLineHeight.none,
              fontFamily: FontFamily.unbounded,
            ),
          ),
          flexibleSpace: _buildFlexibleSpace(
            context: context,
            borderColor: borderColor,
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
    required Color borderColor,

    required EdgeInsets titlePadding,
    required AppBarState appBarState,
    required String title,
    required String? flexibleSpaceTitle,
  }) {
    return RepaintBoundary(
      child: PhysicalModel(
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        borderRadius: withBorderRadius
            ? BorderRadius.vertical(bottom: Radius.circular(_kBorderRadius))
            : BorderRadius.zero,

        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: _kBlurSigma,
            sigmaY: _kBlurSigma,
          ),

          // IMPORTANT: BackdropFilter must wrap the decorated container
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.grayDark.withValues(alpha: 0.35),
              borderRadius: withBorderRadius
                  ? BorderRadius.vertical(bottom: Radius.circular(_kBorderRadius))
                  : BorderRadius.zero,

              border: Border(
                bottom: BorderSide(
                  color: borderColor,
                  width: withBorderRadius ? 0.7 : 0.3,
                ),
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
                      height: AppLineHeight.condensed,
                      fontFamily: FontFamily.unbounded,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

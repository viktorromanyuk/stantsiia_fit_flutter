import 'dart:io';

import 'package:flutter/cupertino.dart' as ios;
import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

import './app_sliver_app_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.appBar,
    this.theme = ThemeMode.light,
    this.children = const [],
    this.scrollable = true,
    this.onRefresh,
  });

  final ThemeMode theme;
  final AppSliverAppBar appBar;
  final List<Widget> children;
  final bool scrollable;
  final RefreshCallback? onRefresh;

  bool get isLightTheme => theme == ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    final textColor = isLightTheme ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk;
    final backgroundColor = isLightTheme ? AppStyles.colors.whiteMilk : AppStyles.colors.grayDark;
    final brightness = isLightTheme ? Brightness.light : Brightness.dark;

    final mainView = CustomScrollView(
      physics: scrollable ? null : NeverScrollableScrollPhysics(),
      slivers: [
        appBar,
        if (Platform.isIOS && onRefresh != null)
          ios.CupertinoSliverRefreshControl(
            onRefresh: onRefresh,
          ),
        ...children,
      ],
    );

    // TODO: move theme to separate file
    return Theme(
      data: ThemeData(
        brightness: brightness,
        fontFamily: FontFamily.fixel,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppStyles.colors.grayDark,
          surface: backgroundColor,
          onSurface: textColor,
          brightness: brightness,
        ),
        dividerTheme: DividerThemeData(
          radius: BorderRadius.all(AppStyles.borderRadius.full),
          color: AppStyles.colors.grayLight,
        ),
        listTileTheme: ListTileThemeData(
          textColor: textColor,
          iconColor: textColor,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          dragHandleColor: textColor,
          modalBackgroundColor: backgroundColor,
          modalBarrierColor: AppStyles.colors.black.withValues(alpha: 0.7),
          modalElevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: AppStyles.borderRadius.xl4),
          ),
        ),
      ),
      child: Scaffold(
        body: onRefresh == null || Platform.isIOS
            ? mainView
            : RefreshIndicator(
                elevation: 1,
                edgeOffset: 130,
                displacement: 0,
                triggerMode: RefreshIndicatorTriggerMode.onEdge,
                notificationPredicate: (notification) => notification.depth == 0,
                onRefresh: onRefresh!,
                child: mainView,
              ),
      ),
    );
  }
}

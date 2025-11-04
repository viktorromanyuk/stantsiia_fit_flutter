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
        ...children,
      ],
    );

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
      ),
      child: Scaffold(
        body: onRefresh == null
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

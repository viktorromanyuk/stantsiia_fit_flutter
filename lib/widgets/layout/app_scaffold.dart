import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

import './app_sliver_app_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.appBar,
    this.theme = ThemeMode.light,
    this.children = const [],
  });

  final ThemeMode theme;
  final AppSliverAppBar appBar;
  final List<Widget> children;

  bool get isLightTheme => theme == ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    final textColor = isLightTheme ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk;
    final backgroundColor = isLightTheme ? AppStyles.colors.whiteMilk : AppStyles.colors.grayDark;
    final brightness = isLightTheme ? Brightness.light : Brightness.dark;

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
        listTileTheme: ListTileThemeData(
          textColor: textColor,
          iconColor: textColor,
        ),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            appBar,
            ...children,
          ],
        ),
      ),
    );
  }
}

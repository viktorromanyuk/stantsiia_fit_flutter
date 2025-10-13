import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/colors.dart';
import 'package:stantsiia_fit_flutter/gen/index.dart';

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
    return Theme(
      data: ThemeData(
        brightness: isLightTheme ? Brightness.light : Brightness.dark,
        fontFamily: FontFamily.fixel,
        textTheme: TextTheme(
          titleMedium: TextStyle(fontFamily: FontFamily.unbounded),
          titleLarge: TextStyle(fontFamily: FontFamily.unbounded),
        ),
      ),
      child: Scaffold(
        backgroundColor: isLightTheme ? AppColors.whiteMilk : AppColors.grayDark,
        body: CustomScrollView(
          slivers: [
            AppSliverAppBar(
              theme: theme,
              title: appBar.title,
              leadingBuilder: appBar.leadingBuilder,
              actionsBuilder: appBar.actionsBuilder,
            ),
            ...children,
          ],
        ),
      ),
    );
  }
}

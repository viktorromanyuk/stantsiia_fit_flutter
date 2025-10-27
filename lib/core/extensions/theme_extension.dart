import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

extension BuildContextThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  Color get textColor => theme.isLight ? AppStyles.colors.grayDark : AppStyles.colors.whiteMilk;
  Color get backgroundColor => theme.isLight ? AppStyles.colors.whiteMilk : AppStyles.colors.grayDark;
}

extension ThemeDataExtension on ThemeData {
  bool get isLight => brightness == Brightness.light;
  bool get isDark => brightness == Brightness.dark;
}

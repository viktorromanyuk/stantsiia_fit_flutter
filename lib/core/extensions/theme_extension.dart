import 'package:flutter/material.dart';

extension BuildContextThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension ThemeDataExtension on ThemeData {
  bool get isLight => brightness == Brightness.light;
  bool get isDark => brightness == Brightness.dark;
}

extension ThemeModeExtension on ThemeMode {
  bool get isLight => this == ThemeMode.light;
  bool get isDark => this == ThemeMode.dark;
  bool get isSystem => this == ThemeMode.system;
}

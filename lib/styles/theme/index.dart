import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/gen/index.dart';

// TODO: learn why it doesn't work with copyWith on child widgets
final ThemeData appTheme = ThemeData(fontFamily: FontFamily.fixel).copyWith(
  textTheme: TextTheme(
    titleMedium: TextStyle(fontFamily: FontFamily.unbounded),
    titleLarge: TextStyle(fontFamily: FontFamily.unbounded),
  ),
);

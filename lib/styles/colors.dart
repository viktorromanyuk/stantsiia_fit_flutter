import 'package:flutter/material.dart';

abstract final class AppColors {
  // Base
  static const transparent = Colors.transparent;
  static const black = Colors.black;
  static const white = Colors.white;
  static const whiteMilk = Color.fromRGBO(255, 255, 245, 1);

  // Grays
  static const gray = Color.fromRGBO(121, 134, 164, 1);
  static const grayLight = Color.fromRGBO(217, 217, 217, 1);
  static const grayDark = Color.fromRGBO(31, 33, 44, 1);
  static const grayDarkAccent = Color.fromRGBO(26, 28, 37, 1);

  // Orange
  static const orange50 = Color.fromRGBO(255, 170, 140, 1);
  static const orange100 = Color.fromRGBO(255, 130, 115, 1);
  static const orange200 = Color.fromRGBO(255, 110, 90, 1);

  // Purple
  static const purple100 = Color.fromRGBO(126, 113, 244, 1);
  static const purple200 = Color.fromRGBO(132, 74, 255, 1);
  static const purple300 = Color.fromRGBO(83, 39, 177, 1);

  // Green
  static const green100 = Color.fromRGBO(61, 166, 137, 1);
  static const green200 = Color.fromRGBO(0, 135, 92, 1);
  static const green300 = Color.fromRGBO(0, 90, 62, 1);

  // Form
  static const error = Color.fromRGBO(245, 108, 108, 1);

  static const disabledBg = Color.fromRGBO(255, 255, 245, 0.122);
  static const disabledText = Color.fromRGBO(255, 255, 245, 0.38);
  static const placeholder = Color.fromRGBO(168, 171, 178, 1);
}

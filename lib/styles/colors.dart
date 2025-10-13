import 'package:flutter/material.dart';

abstract final class AppColors {
  static const Color transparent = Colors.transparent;
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color whiteMilk = Color.fromARGB(255, 255, 255, 245);

  static const Color gray = Color.fromARGB(255, 101, 113, 137);
  static const Color grayDark = Color.fromARGB(255, 31, 33, 44);
  static const Color grayLight = Color.fromARGB(255, 217, 217, 217);

  static const Color orange50 = Color.fromARGB(255, 255, 170, 140);
  static const Color orange100 = Color.fromARGB(255, 255, 130, 115);
  static const Color orange200 = Color.fromARGB(255, 255, 110, 90);

  static const ColorSwatch<int> orange = ColorSwatch<int>(
    100,
    {
      50: orange50,
      100: orange100,
      200: orange200,
    },
  );

  static const Color purple100 = Color.fromARGB(255, 126, 113, 244);
  static const Color purple200 = Color.fromARGB(255, 132, 74, 255);
  static const Color purple300 = Color.fromARGB(255, 83, 39, 177);

  static const ColorSwatch<int> purple = ColorSwatch<int>(
    100,
    {
      100: purple100,
      200: purple200,
      300: purple300,
    },
  );

  static const Color green100 = Color.fromARGB(255, 61, 166, 137);
  static const Color green200 = Color.fromARGB(255, 0, 135, 92);
  static const Color green300 = Color.fromARGB(255, 0, 90, 62);

  static const ColorSwatch<int> green = ColorSwatch<int>(
    100,
    {
      100: green100,
      200: green200,
      300: green300,
    },
  );
}

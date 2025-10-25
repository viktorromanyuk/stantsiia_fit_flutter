part of 'styles.dart';

abstract final class AppColors {
  static const ({
    // Base
    Color transparent,
    Color black,
    Color white,
    Color whiteMilk,

    // Grays
    Color gray,
    Color grayDark,
    Color grayLight,

    // Orange
    Color orange50,
    Color orange100,
    Color orange200,

    // Purple
    Color purple100,
    Color purple200,
    Color purple300,

    // Green
    Color green100,
    Color green200,
    Color green300,
  })
  values = (
    // Base
    transparent: Colors.transparent,
    black: Colors.black,
    white: Colors.white,
    whiteMilk: Color.fromARGB(255, 255, 255, 245),

    // Grays
    gray: Color.fromARGB(255, 101, 113, 137),
    grayDark: Color.fromARGB(255, 31, 33, 44),
    grayLight: Color.fromARGB(255, 217, 217, 217),

    // Orange
    orange50: Color.fromARGB(255, 255, 170, 140),
    orange100: Color.fromARGB(255, 255, 130, 115),
    orange200: Color.fromARGB(255, 255, 110, 90),

    // Purple
    purple100: Color.fromARGB(255, 126, 113, 244),
    purple200: Color.fromARGB(255, 132, 74, 255),
    purple300: Color.fromARGB(255, 83, 39, 177),

    // Green
    green100: Color.fromARGB(255, 61, 166, 137),
    green200: Color.fromARGB(255, 0, 135, 92),
    green300: Color.fromARGB(255, 0, 90, 62),
  );
}

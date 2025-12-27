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
    Color grayDarkAccent,
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

    // Error
    Color error,
    Color disabledBg,
    Color disabledText,
    Color placeholder,
  })
  values = (
    // Base
    transparent: Colors.transparent,
    black: Colors.black,
    white: Colors.white,
    whiteMilk: Color(0xFFFFFFF5),

    // Grays
    gray: Color.fromARGB(255, 121, 134, 164),
    grayLight: Color(0xFFD9D9D9),
    grayDark: Color(0xFF1F212C),
    grayDarkAccent: Color(0xFF1A1C25),

    // Orange
    orange50: Color(0xFFFFAA8C),
    orange100: Color(0xFFFF8273),
    orange200: Color(0xFFFF6E5A),

    // Purple
    purple100: Color(0xFF7E71F4),
    purple200: Color(0xFF844AFF),
    purple300: Color(0xFF5327B1),

    // Green
    green100: Color(0xFF3DA689),
    green200: Color(0xFF00875C),
    green300: Color(0xFF005A3E),

    // Form
    error: Color(0xFFf56c6c),

    disabledBg: Color(0x1FFFFFF5),
    disabledText: Color(0x61FFFFF5),
    placeholder: Color(0xFFa8abb2),
  );
}

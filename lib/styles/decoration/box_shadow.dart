part of '../styles.dart';

abstract final class AppBoxShadow {
  static final ({
    List<BoxShadow> dark,
    List<BoxShadow> light,
    List<BoxShadow> sm,
    List<BoxShadow> regular,
    List<BoxShadow> md,
    List<BoxShadow> lg,
    List<BoxShadow> xl,
    List<BoxShadow> xxl,
    List<BoxShadow> inner,
    List<BoxShadow> Function(Color) glow,
  })
  values = (
    dark: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.22),
        blurRadius: 32,
        offset: Offset(0, 0),
      ),
    ],
    light: [
      BoxShadow(
        color: Color.fromRGBO(120, 120, 128, 0.16),
        blurRadius: 34,
        offset: Offset(0, 11),
      ),
    ],
    sm: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 2,
        offset: Offset(0, 1),
      ),
    ],
    regular: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 3,
        offset: Offset(0, 1),
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 2,
        spreadRadius: -1,
        offset: Offset(0, 1),
      ),
    ],
    md: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 6,
        spreadRadius: -1,
        offset: Offset(0, 4),
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 4,
        spreadRadius: -2,
        offset: Offset(0, 2),
      ),
    ],
    lg: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 15,
        spreadRadius: -3,
        offset: Offset(0, 10),
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 6,
        spreadRadius: -4,
        offset: Offset(0, 4),
      ),
    ],
    xl: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 25,
        spreadRadius: -5,
        offset: Offset(0, 20),
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 10,
        spreadRadius: -6,
        offset: Offset(0, 8),
      ),
    ],
    xxl: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius: 50,
        spreadRadius: -12,
        offset: Offset(0, 25),
      ),
    ],
    inner: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 4,
        offset: Offset(0, 2),
      ),
    ],
    glow: (Color color) => [
      BoxShadow(
        color: color.withValues(alpha: 0.7),
        blurRadius: 30,
        spreadRadius: -4,
      ),
      BoxShadow(
        color: color.withValues(alpha: 0.7),
        blurRadius: 0,
        spreadRadius: 1.5,
      ),
    ],
  );
}

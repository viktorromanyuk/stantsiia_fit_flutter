part of '../styles.dart';

abstract final class AppBoxShadow {
  static const ({BoxShadow dark, BoxShadow light}) values = (
    dark: BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.22),
      blurRadius: 32,
      offset: Offset(0, 0),
    ),
    light: BoxShadow(
      color: Color.fromRGBO(120, 120, 128, 0.16),
      blurRadius: 34,
      offset: Offset(0, 11),
    ),
  );
}

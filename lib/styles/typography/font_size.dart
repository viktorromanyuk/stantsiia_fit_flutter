part of '../styles.dart';

abstract final class AppFontSize {
  static const ({
    TextStyle xs,
    TextStyle sm,
    TextStyle md,
    TextStyle lg,
    TextStyle xl,
    TextStyle xl2,
    TextStyle xl3,
    TextStyle xl4,
  })
  values = (
    xs: TextStyle(fontSize: 12, height: 16 / 12),
    sm: TextStyle(fontSize: 14, height: 20 / 14),
    md: TextStyle(fontSize: 16, height: 24 / 16),
    lg: TextStyle(fontSize: 18, height: 28 / 18),
    xl: TextStyle(fontSize: 20, height: 28 / 20),
    xl2: TextStyle(fontSize: 24, height: 32 / 24),
    xl3: TextStyle(fontSize: 30, height: 36 / 30),
    xl4: TextStyle(fontSize: 36, height: 40 / 36),
  );
}

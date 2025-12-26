part of '../styles.dart';

abstract final class AppFontSize {
  static const ({
    TextStyle fs12,
    TextStyle fs14,
    TextStyle fs16,
    TextStyle fs18,
    TextStyle fs20,
    TextStyle fs24,
    TextStyle fs30,
    TextStyle fs36,
  })
  values = (
    fs12: TextStyle(fontSize: 12, height: 16 / 12),
    fs14: TextStyle(fontSize: 14, height: 20 / 14),
    fs16: TextStyle(fontSize: 16, height: 24 / 16),
    fs18: TextStyle(fontSize: 18, height: 28 / 18),
    fs20: TextStyle(fontSize: 20, height: 28 / 20),
    fs24: TextStyle(fontSize: 24, height: 32 / 24),
    fs30: TextStyle(fontSize: 30, height: 36 / 30),
    fs36: TextStyle(fontSize: 36, height: 40 / 36),
  );
}

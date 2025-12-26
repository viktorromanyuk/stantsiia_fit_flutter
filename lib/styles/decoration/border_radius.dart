part of '../styles.dart';

abstract final class AppBorderRadius {
  static const ({
    Radius none,
    Radius r2,
    Radius r4,
    Radius r6,
    Radius r8,
    Radius r12,
    Radius r16,
    Radius r18,
    Radius r24,
    Radius r30,
    Radius full,
  })
  values = (
    none: Radius.zero,
    r2: Radius.circular(2),
    r4: Radius.circular(4),
    r6: Radius.circular(6),
    r8: Radius.circular(8),
    r12: Radius.circular(12),
    r16: Radius.circular(16),
    r18: Radius.circular(18),
    r24: Radius.circular(24),
    r30: Radius.circular(30),
    full: Radius.circular(9999),
  );
}

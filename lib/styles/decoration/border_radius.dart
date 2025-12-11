part of '../styles.dart';

abstract final class AppBorderRadius {
  static const ({
    Radius none,
    Radius sm,
    Radius md,
    Radius lg,
    Radius xl,
    Radius xl2,
    Radius xl3,
    Radius xl4,
    Radius xl5,
    Radius full,
  })
  values = (
    none: Radius.zero,
    sm: Radius.circular(2),
    md: Radius.circular(4),
    lg: Radius.circular(6),
    xl: Radius.circular(8),
    xl2: Radius.circular(12),
    xl3: Radius.circular(16),
    xl4: Radius.circular(24),
    xl5: Radius.circular(30),
    full: Radius.circular(9999),
  );
}

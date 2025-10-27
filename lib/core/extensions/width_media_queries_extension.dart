import 'package:flutter/material.dart';

abstract final class _Breakpoints {
  static const sm = 640;
  static const md = 768;
  static const lg = 1024;
  static const xl = 1280;
  static const xl2 = 1536;
}

class AppBreakpoints {
  const AppBreakpoints(this.context);
  final BuildContext context;

  double get _width => MediaQuery.sizeOf(context).width;
  double get value => _width;

  // ----- Min-width (mobile-first) -----
  bool get minSm => _width >= _Breakpoints.sm;
  bool get minMd => _width >= _Breakpoints.md;
  bool get minLg => _width >= _Breakpoints.lg;
  bool get minXl => _width >= _Breakpoints.xl;
  bool get minXl2 => _width >= _Breakpoints.xl2;

  // ----- Max-width -----
  bool get maxXs => _width < _Breakpoints.sm;
  bool get maxSm => _width < _Breakpoints.md;
  bool get maxMd => _width < _Breakpoints.lg;
  bool get maxLg => _width < _Breakpoints.xl;
  bool get maxXl => _width < _Breakpoints.xl2;

  // ----- Exact range matchers -----
  bool get xs => maxXs;
  bool get sm => minSm && maxSm;
  bool get md => minMd && maxMd;
  bool get lg => minLg && maxLg;
  bool get xl => minXl && maxXl;
  bool get xl2 => minXl2;
}

extension BreakpointsExtension on BuildContext {
  AppBreakpoints get breakpoints => AppBreakpoints(this);
}

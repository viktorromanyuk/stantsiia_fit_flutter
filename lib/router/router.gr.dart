// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:stantsiia_fit_flutter/features/account/screens/account_screen.dart'
    as _i1;
import 'package:stantsiia_fit_flutter/features/schedule/screens/schedule_screen.dart'
    as _i3;
import 'package:stantsiia_fit_flutter/features/trainings/screens/trainings_screen.dart'
    as _i5;
import 'package:stantsiia_fit_flutter/features/trainings_packages/screens/trainings_packages_screen.dart'
    as _i4;
import 'package:stantsiia_fit_flutter/layouts/default_layout.dart' as _i2;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i6.PageRouteInfo<void> {
  const AccountRoute({List<_i6.PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.DefaultLayoutScreen]
class DefaultLayoutRoute extends _i6.PageRouteInfo<void> {
  const DefaultLayoutRoute({List<_i6.PageRouteInfo>? children})
    : super(DefaultLayoutRoute.name, initialChildren: children);

  static const String name = 'DefaultLayoutRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.DefaultLayoutScreen();
    },
  );
}

/// generated route for
/// [_i3.ScheduleScreen]
class ScheduleRoute extends _i6.PageRouteInfo<void> {
  const ScheduleRoute({List<_i6.PageRouteInfo>? children})
    : super(ScheduleRoute.name, initialChildren: children);

  static const String name = 'ScheduleRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.ScheduleScreen();
    },
  );
}

/// generated route for
/// [_i4.TrainingsPackagesScreen]
class TrainingsPackagesRoute extends _i6.PageRouteInfo<void> {
  const TrainingsPackagesRoute({List<_i6.PageRouteInfo>? children})
    : super(TrainingsPackagesRoute.name, initialChildren: children);

  static const String name = 'TrainingsPackagesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.TrainingsPackagesScreen();
    },
  );
}

/// generated route for
/// [_i5.TrainingsScreen]
class TrainingsRoute extends _i6.PageRouteInfo<void> {
  const TrainingsRoute({List<_i6.PageRouteInfo>? children})
    : super(TrainingsRoute.name, initialChildren: children);

  static const String name = 'TrainingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.TrainingsScreen();
    },
  );
}

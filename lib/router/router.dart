import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:stantsiia_fit_flutter/layouts/default_layout.dart';

import 'package:stantsiia_fit_flutter/features/schedule/screens/screens.dart';
import 'package:stantsiia_fit_flutter/features/trainings/screens/screens.dart';
import 'package:stantsiia_fit_flutter/features/trainings_packages/screens/screens.dart';
import 'package:stantsiia_fit_flutter/features/account/screens/screens.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/schedule',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => DefaultLayout(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'schedule',
              path: '/schedule',
              builder: (context, state) => const ScheduleScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'trainings',
              path: '/trainings',
              builder: (context, state) => const TrainingsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'trainings-packages',
              path: '/trainings-packages',
              builder: (context, state) => const TrainingsPackagesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'account',
              path: '/account',
              builder: (context, state) => const AccountScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

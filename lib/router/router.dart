import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:stantsiia_fit_flutter/layouts/default_layout.dart';

import 'package:stantsiia_fit_flutter/screens/schedule_screen.dart';
import 'package:stantsiia_fit_flutter/screens/trainings_screen.dart';
import 'package:stantsiia_fit_flutter/screens/trainings_packages_screen.dart';

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
      ],
    ),
  ],
);

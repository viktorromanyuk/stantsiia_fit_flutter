import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../layouts/default_layout.dart';
import '../screens/schedule_screen.dart';
import '../screens/trainings_nested_screen.dart';
import '../screens/trainings_screen.dart';

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
              routes: [
                GoRoute(
                  path: 'nested',
                  builder: (context, state) => const TrainingsNestedScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

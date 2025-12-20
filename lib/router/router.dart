import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/router/router.gr.dart';

// TODO: add from guidelines

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive(); // .cupertino, .material ..etc

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: LoginRoute.page,
      path: '/login',
    ),
    AutoRoute(
      page: DefaultLayoutRoute.page,
      path: '/',
      initial: true,
      children: [
        AutoRoute(page: ScheduleRoute.page, path: 'schedule'),
        AutoRoute(page: TrainingsRoute.page, path: 'trainings'),
        AutoRoute(page: TrainingsPackagesRoute.page, path: 'trainings-packages'),
        AutoRoute(page: AccountRoute.page, path: 'account'),
      ],
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}

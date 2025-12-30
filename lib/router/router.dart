import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/router/router.gr.dart';

// TODO: add from guidelines

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: AuthRoute.page,
      path: '/auth',
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      duration: const Duration(milliseconds: 500),
      children: [
        AutoRoute(page: LoginRoute.page, path: 'login', initial: true),
        AutoRoute(page: SignupRoute.page, path: 'signup'),
        AutoRoute(page: OtpVerifyRoute.page, path: 'otp-verify'),
      ],
    ),

    CustomRoute(
      page: MainLayoutRoute.page,
      path: '/',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      duration: const Duration(milliseconds: 500),
      children: [
        AutoRoute(page: ScheduleRoute.page, path: 'schedule'),
        AutoRoute(page: TrainingsRoute.page, path: 'trainings'),
        AutoRoute(page: TrainingsPackagesRoute.page, path: 'trainings-packages'),
        AutoRoute(
          page: ShellRoute.page,
          path: 'account',
          maintainState: false,
          children: [
            AutoRoute(page: AccountRoute.page, path: '', initial: true),
            AutoRoute(page: AccountProfileRoute.page, path: 'profile'),
            AutoRoute(page: AccountScheduleRoute.page, path: 'schedule'),
            AutoRoute(page: AccountTrainingsPackagesRoute.page, path: 'trainings-packages'),
          ],
        ),
      ],
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}

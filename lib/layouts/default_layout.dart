import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/router/router.gr.dart';

import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

@RoutePage()
class DefaultLayoutScreen extends StatelessWidget {
  const DefaultLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ScheduleRoute(),
        TrainingsRoute(),
        TrainingsPackagesRoute(),
        AccountRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          backgroundColor: AppStyles.colors.grayDark,
          body: child,
          extendBody: true,
          bottomNavigationBar: AppNavigationBar(
            tabsRouter: tabsRouter,
          ),
        );
      },
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: CurvedAnimation(parent: animation, curve: Curves.easeInOutCubicEmphasized),
        child: child,
      ),
      duration: const Duration(milliseconds: 400),
    );
  }
}

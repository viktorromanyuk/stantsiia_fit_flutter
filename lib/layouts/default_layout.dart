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
        final activeIndex = tabsRouter.activeIndex;
        final previousIndex = tabsRouter.previousIndex;

        final backgroundColor = previousIndex != null && previousIndex >= 2 && activeIndex >= 2
            ? AppStyles.colors.whiteMilk
            : AppStyles.colors.grayDark;

        return Scaffold(
          backgroundColor: backgroundColor,
          body: child,
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

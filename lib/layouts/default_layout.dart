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
    return AutoTabsScaffold(
      backgroundColor: AppStyles.colors.grayDark,
      routes: const [
        ScheduleRoute(),
        TrainingsRoute(),
        TrainingsPackagesRoute(),
        AccountRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: CurvedAnimation(parent: animation, curve: Curves.easeInOutCubicEmphasized),
        child: child,
      ),

      animationDuration: const Duration(milliseconds: 400),
      bottomNavigationBuilder: (_, tabsRouter) {
        return AppNavigationBar(
          tabsRouter: tabsRouter,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  Color _getColor(Set<WidgetState> states) {
    return states.contains(WidgetState.selected) ? AppStyles.colors.orange100 : AppStyles.colors.whiteMilk;
  }

  @override
  Widget build(BuildContext context) => NavigationBarTheme(
    data: NavigationBarThemeData(
      height: kBottomNavigationBarHeight,
      labelPadding: const EdgeInsets.only(top: 0),
      backgroundColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      iconTheme: WidgetStateProperty.resolveWith(
        (states) => IconThemeData(color: _getColor(states)),
      ),
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => AppStyles.fontSize.xs.copyWith(
          color: _getColor(states),
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppStyles.colors.grayLight, width: 0.5)),
      ),
      child: NavigationBar(
        backgroundColor: AppStyles.colors.grayDark,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        destinations: [
          NavigationDestination(
            icon: AppIcon(Assets.icons.schedule),
            label: 'Розклад',
          ),
          NavigationDestination(
            icon: AppIcon(Assets.icons.trainings, height: 24),
            label: 'Тренування',
          ),
          NavigationDestination(
            icon: AppIcon(Assets.icons.trainingPackage),
            label: 'Абонементи',
          ),
        ],
      ),
    ),
  );
}

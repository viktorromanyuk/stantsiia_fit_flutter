import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stantsiia_fit_flutter/styles/colors.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  Color _getColor(Set<WidgetState> states) {
    return states.contains(WidgetState.selected) ? AppColors.orange100 : AppColors.whiteMilk;
  }

  @override
  Widget build(BuildContext context) => NavigationBarTheme(
    data: NavigationBarThemeData(
      backgroundColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      iconTheme: WidgetStateProperty.resolveWith((states) => IconThemeData(color: _getColor(states))),
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => TextStyle(
          color: _getColor(states),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    child: Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.grayLight)),
      ),
      child: NavigationBar(
        backgroundColor: AppColors.grayDark,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Schedule'),
          NavigationDestination(icon: Icon(Icons.fitness_center), label: 'Trainings'),
        ],
      ),
    ),
  );
}

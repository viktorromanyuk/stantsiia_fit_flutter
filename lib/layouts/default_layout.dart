import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stantsiia_fit_flutter/styles/colors.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('DefaultLayout'));

  final StatefulNavigationShell navigationShell;

  void _onDestinationSelected(int index) {
    print('onDestinationSelected: $index');
    navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      backgroundColor: AppColors.whiteMilk,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((states) {
            final selected = states.contains(WidgetState.selected);
            return IconThemeData(
              color: selected ? AppColors.orange100 : AppColors.whiteMilk, // animates
            );
          }),
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
            final selected = states.contains(WidgetState.selected);
            return TextStyle(
              color: selected ? AppColors.orange100 : AppColors.whiteMilk, // animates
              fontWeight: FontWeight.w600,
            );
          }),
        ),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: AppColors.grayLight,
                width: 1,
              ),
            ),
          ),
          child: NavigationBar(
            backgroundColor: AppColors.grayDark,
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: _onDestinationSelected,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.fitness_center), label: 'Trainings'),
            ],
          ),
        ),
      ),
    );
  }
}

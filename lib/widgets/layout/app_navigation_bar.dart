import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.tabsRouter});
  final TabsRouter tabsRouter;

  static const double _kBlurSigma = 7.0;

  Color _getColor(Set<WidgetState> states) {
    return states.contains(WidgetState.selected) ? AppStyles.colors.orange100 : AppStyles.colors.whiteMilk;
  }

  static final List<({String title, SvgGenImage icon})> _navDestinations = [
    (title: 'Розклад', icon: Assets.icons.schedule),
    (title: 'Тренування', icon: Assets.icons.trainings),
    (title: 'Абонементи', icon: Assets.icons.trainingPackage),
    (title: 'Мій акаунт', icon: Assets.icons.user),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        height: kBottomNavigationBarHeight,
        labelPadding: const EdgeInsets.only(top: 0),
        backgroundColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(color: _getColor(states)),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => AppStyles.fontSize.fs12.copyWith(
            color: _getColor(states),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      child: RepaintBoundary(
        child: PhysicalModel(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: _kBlurSigma,
              sigmaY: _kBlurSigma,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: AppStyles.colors.whiteMilk, width: 0.3)),
              ),
              child: NavigationBar(
                backgroundColor: AppStyles.colors.grayDark.withValues(alpha: 0.5),
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: (index) => tabsRouter.setActiveIndex(index),
                destinations: _navDestinations
                    .map(
                      (destination) => NavigationDestination(
                        icon: AppIcon(destination.icon),
                        label: destination.title,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static final List<({String title, SvgGenImage icon})> _navTiles = [
    (title: 'Мої дані', icon: Assets.icons.user),
    (title: 'Мій розклад', icon: Assets.icons.schedule),
    (title: 'Мої абонементи', icon: Assets.icons.trainingPackage),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.light,
      appBar: AppSliverAppBar(title: 'Мій акаунт'),
      scrollable: false,
      children: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 3,
              children: _navTiles.indexed.map((tile) {
                final i = tile.$1;
                final data = tile.$2;

                final isFirst = i == 0;
                final isLast = i == _navTiles.length - 1;

                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppStyles.colors.grayMilk,
                    border: Border.all(color: AppStyles.colors.grayLight.withValues(alpha: 0.7)),
                    borderRadius: BorderRadius.vertical(
                      top: isFirst ? AppStyles.borderRadius.xl5 : AppStyles.borderRadius.lg,
                      bottom: isLast ? AppStyles.borderRadius.xl5 : AppStyles.borderRadius.lg,
                    ),
                  ),
                  child: ListTile(
                    horizontalTitleGap: 12,
                    leading: SizedBox(
                      width: 24,
                      child: Center(child: AppIcon(data.icon)),
                    ),
                    title: Text(
                      data.title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

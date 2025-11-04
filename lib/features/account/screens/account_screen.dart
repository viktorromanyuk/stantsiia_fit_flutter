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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          sliver: SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: AppStyles.colors.grayMilk,
                boxShadow: AppStyles.boxShadow.md,
                borderRadius: BorderRadius.all(AppStyles.borderRadius.xl4),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: ListTile.divideTiles(
                  color: AppStyles.colors.grayLight,
                  context: context,
                  tiles: _navTiles.map(
                    (tile) => ListTile(
                      leading: SizedBox(
                        width: 24,
                        child: Center(
                          child: AppIcon(tile.icon),
                        ),
                      ),
                      title: Text(
                        tile.title,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

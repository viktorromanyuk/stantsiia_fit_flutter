import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static final List<List<({String title, SvgGenImage icon, VoidCallback? action})>> _navTiles = [
    [
      (title: 'Мій профіль', icon: Assets.icons.user, action: null),
      (title: 'Мій розклад', icon: Assets.icons.schedule, action: null),
      (title: 'Мої абонементи', icon: Assets.icons.trainingPackage, action: null),
    ],
    [
      (title: 'Вийти', icon: Assets.icons.logout, action: () => print('logout')),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.light,
      scrollable: false,
      children: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                spacing: 32,
                children: [
                  Column(
                    spacing: 8,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppStyles.colors.grayLight,
                        radius: 48,
                        child: Text(
                          'ВР',
                          style: AppStyles.fontSize.xl2.copyWith(
                            fontFamily: FontFamily.unbounded,
                          ),
                        ),
                      ),

                      Text(
                        'Віктор Романюк',
                        style: AppStyles.fontSize.xl2.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 3,
                    children: _navTiles.indexed.expand((group) {
                      final groupIndex = group.$1;
                      final items = group.$2;
                      final isLastGroup = groupIndex == _navTiles.length - 1;

                      final List<Widget> tiles = items.indexed.map<Widget>((tile) {
                        final itemIndex = tile.$1;
                        final data = tile.$2;

                        final isFirstInGroup = itemIndex == 0;
                        final isLastInGroup = itemIndex == items.length - 1;

                        return DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppStyles.colors.grayMilk,
                            border: Border.all(color: AppStyles.colors.grayLight.withValues(alpha: 0.7)),
                            borderRadius: BorderRadius.vertical(
                              top: isFirstInGroup ? AppStyles.borderRadius.xl5 : AppStyles.borderRadius.lg,
                              bottom: isLastInGroup ? AppStyles.borderRadius.xl5 : AppStyles.borderRadius.lg,
                            ),
                          ),
                          child: ListTile(
                            horizontalTitleGap: 12,
                            trailing: data.action == null ? AppIcon(Assets.icons.caretRight, height: 12) : null,
                            leading: SizedBox(
                              width: 24,
                              child: Center(child: AppIcon(data.icon)),
                            ),
                            title: Text(
                              data.title,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            onTap: data.action,
                          ),
                        );
                      }).toList();

                      if (!isLastGroup) {
                        tiles.add(const SizedBox(height: 32));
                      }

                      return tiles;
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

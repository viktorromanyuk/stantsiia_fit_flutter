import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/layout/index.dart';
import 'package:stantsiia_fit_flutter/widgets/app_icon.dart';
import 'package:stantsiia_fit_flutter/gen/index.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.light,
      appBar: AppSliverAppBar(
        title: 'Розклад',
        leadingBuilder: (context, tColor) => IconButton(
          onPressed: () {},
          icon: AppIcon(Assets.icons.arrowLeft, color: tColor),
        ),
        actionsBuilder: (context, tColor) => [
          IconButton(
            onPressed: () {},
            icon: AppIcon(Assets.icons.calendar, color: tColor),
          ),
        ],
      ),
      children: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, i) => ListTile(
              title: Text(
                'Станція — це проєкт, який надихає за допомогою спорту, танців та творчості. Допомагає перезаряджатися, відволіктися від рутини та дарує тобі нескінченний заряд енергії та сил для наповненого життя. $i',
              ),
            ),
            childCount: 50,
          ),
        ),
      ],
    );
  }
}

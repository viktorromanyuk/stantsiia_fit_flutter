import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/enums.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.dark,
      appBar: AppSliverAppBar(
        title: 'Жовтень',
        flexibleSpaceTitle: 'Розклад',
        leadingBuilder: (context, tColor) => IconButton(
          onPressed: () {},
          icon: AppIcon(Assets.icons.checkFilled, color: tColor),
        ),
      ),
      children: [
        SliverToBoxAdapter(
          child: EntityCheckMark(type: EEntityType.fitness),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, i) => ListTile(
              title: AppIcon(Assets.icons.logoFull, width: 200),
            ),
            childCount: 50,
          ),
        ),
      ],
    );
  }
}

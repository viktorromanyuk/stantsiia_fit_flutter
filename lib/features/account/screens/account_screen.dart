import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.light,
      appBar: AppSliverAppBar(title: 'Мій акаунт'),
      children: [
        SliverToBoxAdapter(
          child: Empty(description: 'Немає даних'),
        ),
      ],
    );
  }
}

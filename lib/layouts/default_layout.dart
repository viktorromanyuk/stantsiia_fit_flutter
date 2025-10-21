import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('DefaultLayout'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: AppNavigationBar(navigationShell: navigationShell),
    );
  }
}

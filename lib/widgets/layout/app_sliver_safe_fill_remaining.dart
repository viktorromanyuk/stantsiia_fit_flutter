import 'package:flutter/material.dart';

class AppSliverSafeFillRemaining extends StatelessWidget {
  const AppSliverSafeFillRemaining({
    super.key,
    this.hasScrollBody = false,
    required this.child,
  });

  final bool hasScrollBody;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.paddingOf(context).bottom;

    return SliverFillRemaining(
      hasScrollBody: false,
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding),
        child: child,
      ),
    );
  }
}

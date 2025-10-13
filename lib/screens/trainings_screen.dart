import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TrainingsScreen extends StatelessWidget {
  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: PointerDeviceKind.values.toSet(),
      ),
      home: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 120.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text('Flight Report'),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => ListTile(
                  title: Text(
                    'Item $i',
                  ),
                ),
                childCount: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

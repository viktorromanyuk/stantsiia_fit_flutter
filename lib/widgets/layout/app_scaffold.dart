import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'app_sliver_app_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    this.children = const [],
    this.scrollable = true,
    this.onRefresh,
  });

  final AppSliverAppBar? appBar;
  final List<Widget> children;
  final bool scrollable;
  final RefreshCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    final mainView = CustomScrollView(
      physics: scrollable ? null : NeverScrollableScrollPhysics(),
      slivers: [
        if (appBar != null) appBar!,
        if (Platform.isIOS && onRefresh != null)
          cupertino.CupertinoSliverRefreshControl(
            onRefresh: onRefresh!,
          ),
        ...children,

        if (scrollable)
          SliverToBoxAdapter(
            child: SafeArea(top: false, child: SizedBox(height: 0)),
          ),
      ],
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: onRefresh == null || Platform.isIOS
          ? mainView
          : RefreshIndicator(
              elevation: 1,
              edgeOffset: 130,
              displacement: 0,
              triggerMode: RefreshIndicatorTriggerMode.onEdge,
              notificationPredicate: (notification) => notification.depth == 0,
              onRefresh: onRefresh!,
              child: mainView,
            ),
    );
  }
}

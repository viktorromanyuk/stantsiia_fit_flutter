import 'package:flutter/cupertino.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

class RefreshControl extends StatelessWidget {
  final RefreshCallback onRefresh;

  const RefreshControl({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: CupertinoTheme.of(context).copyWith(
        brightness: context.theme.isLight ? Brightness.light : Brightness.dark,
      ),
      child: CupertinoSliverRefreshControl(onRefresh: onRefresh),
    );
  }
}

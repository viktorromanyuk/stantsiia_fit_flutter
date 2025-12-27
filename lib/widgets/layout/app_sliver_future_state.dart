import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class AppSliverFutureState<T> extends StatelessWidget {
  const AppSliverFutureState({
    super.key,
    required this.isWaiting,
    required this.isEmpty,
    required this.hasError,
    required this.loader,
    required this.onRefresh,
    required this.emptyText,
    required this.content,
  });

  final bool isWaiting;
  final bool isEmpty;
  final bool hasError;
  final Widget loader;
  final VoidCallback onRefresh;
  final String emptyText;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    if (isWaiting && isEmpty) {
      return loader;
    } else if (hasError) {
      return AppSliverSafeFillRemaining(
        child: ApiError(onRefresh: onRefresh),
      );
    } else if (isEmpty) {
      return AppSliverSafeFillRemaining(
        child: Empty(description: emptyText, onRefresh: onRefresh),
      );
    }

    return content;
  }
}

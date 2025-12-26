import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

import '../services/services.dart';
import '../widgets/widgets.dart';

@RoutePage()
class TrainingsPackagesScreen extends StatefulWidget {
  const TrainingsPackagesScreen({super.key});

  @override
  State<TrainingsPackagesScreen> createState() => _TrainingsPackagesScreenState();
}

class _TrainingsPackagesScreenState extends State<TrainingsPackagesScreen> {
  final _trainingsPackagesService = const TrainingsPackagesService();

  late Future<List<TrainingsPackageModel>> _packagesFuture;

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TrainingsPackageModel>>(
      future: _packagesFuture,
      builder: (context, snapshot) {
        final data = snapshot.data ?? [];

        return AppScaffold(
          theme: ThemeMode.light,
          scrollable: !snapshot.isWaiting || data.isEmpty,
          onRefresh: _refresh,
          appBar: const AppSliverAppBar(title: 'Абонементи'),
          children: (context) => [
            AppSliverFutureState(
              isEmpty: data.isEmpty,
              isWaiting: snapshot.isWaiting,
              hasError: snapshot.hasError,
              loader: const TrainingsPackagesLoader(),
              onRefresh: _refresh,
              emptyText: 'Немає абонементів',
              content: TrainingsPackagesList(
                packages: data,
                onItemTap: (package) => showTrainingsPackagePurchaseDialog(context, package),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _refresh() async {
    setState(() {
      _packagesFuture = _trainingsPackagesService.getPackages();
    });
    await _packagesFuture;
  }
}

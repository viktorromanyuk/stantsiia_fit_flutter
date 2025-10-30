import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import '../widgets/widgets.dart';

@RoutePage()
class TrainingsPackagesScreen extends StatefulWidget {
  const TrainingsPackagesScreen({super.key});

  @override
  State<TrainingsPackagesScreen> createState() => _TrainingsPackagesScreenState();
}

class _TrainingsPackagesScreenState extends State<TrainingsPackagesScreen> {
  late Future<List<Map<String, dynamic>>> _packagesFuture;

  Future<List<Map<String, dynamic>>> _fetchPackages() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Supabase.instance.client.from('fit_trainings_packages').select('*');
  }

  Future<void> _refresh() async {
    setState(() {
      _packagesFuture = _fetchPackages();
    });
    await _packagesFuture;
  }

  @override
  void initState() {
    super.initState();
    _packagesFuture = _fetchPackages();
  }

  @override
  Widget build(BuildContext context) {
    // todo: refactor indicator
    return RefreshIndicator(
      onRefresh: _refresh,
      edgeOffset: 90,
      // If your list can be shorter than the viewport, keeping pull-to-refresh
      // usable everywhere:
      notificationPredicate: (notification) => notification.depth == 0,
      child: AppScaffold(
        theme: ThemeMode.light,
        appBar: AppSliverAppBar(
          title: 'Абонементи',
        ),
        // AppScaffold builds a CustomScrollView with these slivers.
        children: [
          FutureBuilder<List<Map<String, dynamic>>>(
            future: _packagesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return TrainingsPackageSliverLoader();
              }

              if (snapshot.hasError) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text('Помилка завантаження: ${snapshot.error}'),
                  ),
                );
              }

              final data = snapshot.data;
              final isEmpty = data == null || data.isEmpty;

              if (isEmpty) {
                // Ensure the scroll view is always scrollable for the pull gesture by
                // giving at least one sliver that can stretch.
                return const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Empty(description: 'Немає абонементів'),
                );
              }

              final trainingsPackages = data;

              return SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                sliver: SliverList.separated(
                  itemBuilder: (BuildContext context, int index) => TrainingsPackage(data: trainingsPackages[index]),
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                  itemCount: trainingsPackages.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

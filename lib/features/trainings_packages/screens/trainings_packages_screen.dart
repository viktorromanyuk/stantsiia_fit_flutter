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
    // TODO: add types
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _packagesFuture,
      builder: (context, snapshot) {
        final trainingsPackages = snapshot.data;
        final isEmpty = trainingsPackages == null || trainingsPackages.isEmpty;
        final isLoading = snapshot.connectionState == ConnectionState.waiting;

        return AppScaffold(
          theme: ThemeMode.light,
          scrollable: !isLoading && !isEmpty,
          onRefresh: _refresh,
          appBar: AppSliverAppBar(
            title: 'Абонементи',
          ),
          children: [
            if (isLoading)
              TrainingsPackageSliverLoader()
            else if (snapshot.hasError)
              SliverFillRemaining(
                child: Center(
                  child: Text('Помилка завантаження: ${snapshot.error}'),
                ),
              )
            else if (isEmpty)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Empty(description: 'Немає абонементів'),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                sliver: SliverList.separated(
                  itemBuilder: (BuildContext context, int index) => TrainingsPackage(data: trainingsPackages[index]),
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                  itemCount: trainingsPackages.length,
                ),
              ),
          ],
        );
      },
    );
  }
}

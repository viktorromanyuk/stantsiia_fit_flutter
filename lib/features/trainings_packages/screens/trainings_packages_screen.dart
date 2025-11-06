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
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _packagesFuture,
      builder: (context, snapshot) {
        final isLoading = snapshot.connectionState == ConnectionState.waiting;
        final data = snapshot.data;
        final isEmpty = data == null || data.isEmpty;

        return AppScaffold(
          theme: ThemeMode.light,
          scrollable: !isLoading && !isEmpty,
          onRefresh: _refresh,
          appBar: const AppSliverAppBar(title: 'Абонементи'),
          children: [
            if (isLoading)
              SliverPadding(
                // TODO: move padding to be reusable
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                sliver: const TrainingsPackageSliverLoader(),
              )
            else if (snapshot.hasError)
              SliverFillRemaining(
                child: ApiError(onRefresh: _refresh),
              )
            else if (isEmpty)
              const SliverFillRemaining(
                child: Empty(description: 'Немає абонементів'),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                sliver: SliverList.separated(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      builder: (context) => TrainingsPackagePurchaseDialog(data: data[index]),
                    ),
                    child: TrainingsPackage(data: data[index]),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(height: 20),
                  itemCount: data.length,
                ),
              ),
          ],
        );
      },
    );
  }
}

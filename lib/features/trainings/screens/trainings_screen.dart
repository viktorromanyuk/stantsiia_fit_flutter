import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

import '../widgets/widgets.dart';

@RoutePage()
class TrainingsScreen extends StatefulWidget {
  const TrainingsScreen({super.key});

  @override
  State<TrainingsScreen> createState() => _TrainingsScreenState();
}

class _TrainingsScreenState extends State<TrainingsScreen> {
  late Future<List<Map<String, dynamic>>> _trainingsFuture;

  Future<List<Map<String, dynamic>>> _fetchTrainings() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Supabase.instance.client.from('fit_trainings').select('*');
  }

  Future<void> _refresh() async {
    setState(() {
      _trainingsFuture = _fetchTrainings();
    });
    await _trainingsFuture;
  }

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _trainingsFuture,
      builder: (context, snapshot) {
        final trainings = snapshot.data;
        final isEmpty = trainings == null || trainings.isEmpty;
        final isLoading = snapshot.connectionState == ConnectionState.waiting;

        return AppScaffold(
          theme: ThemeMode.dark,
          scrollable: !isLoading && !isEmpty,
          onRefresh: _refresh,
          appBar: AppSliverAppBar(title: 'Тренування'),
          children: [
            if (isLoading && isEmpty)
              const TrainingsSliverLoader()
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
                  itemBuilder: (BuildContext context, int index) => GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      showDragHandle: true,
                      builder: (context) => SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: TrainingInfoDialog(data: trainings[index]),
                      ),
                    ),
                    child: TrainingScreenCard(data: trainings[index]),
                  ),
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 32),
                  itemCount: trainings.length,
                ),
              ),
          ],
        );
      },
    );
  }
}

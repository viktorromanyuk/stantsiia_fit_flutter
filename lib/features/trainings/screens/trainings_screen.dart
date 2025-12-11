import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

import '../widgets/widgets.dart';

@RoutePage()
class TrainingsScreen extends StatefulWidget {
  const TrainingsScreen({super.key});

  @override
  State<TrainingsScreen> createState() => _TrainingsScreenState();
}

class _TrainingsScreenState extends State<TrainingsScreen> {
  TrainingTypeEnum? selectedFilter;
  late Future<List<TrainingModel>> _trainingsFuture;

  Future<List<TrainingModel>> _fetchTrainings() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Supabase.instance.client
        .from('fit_trainings')
        .select('*')
        .withConverter(
          (data) => data.map(TrainingModel.fromJson).toList(),
        );
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

  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: AppStyles.colors.grayDark,
      builder: (context) => TrainingsFilterDialog(
        selectedFilter: selectedFilter,
        onChanged: (value) {
          setState(() {
            selectedFilter = value;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TrainingModel>>(
      future: _trainingsFuture,
      builder: (context, snapshot) {
        List<TrainingModel> trainings = selectedFilter == null
            ? snapshot.data?.toList() ?? []
            : snapshot.data?.where((training) => selectedFilter == training.type).toList() ?? [];

        final isEmpty = trainings.isEmpty;
        final isLoading = snapshot.connectionState == ConnectionState.waiting;

        return AppScaffold(
          theme: ThemeMode.dark,
          scrollable: !isLoading && !isEmpty,
          onRefresh: _refresh,
          appBar: AppSliverAppBar(
            title: 'Тренування',
            actionsBuilder: (context, constraints, tColor) => [
              PingingFilterButton(
                isActive: selectedFilter != null,
                onPressed: () => _showFilterBottomSheet(context),
              ),
            ],
          ),
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
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
                sliver: SliverList.separated(
                  itemBuilder: (BuildContext context, int index) => GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      showDragHandle: true,
                      builder: (context) => SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: TrainingInfoDialog(training: trainings[index]),
                      ),
                    ),
                    child: TrainingScreenCard(training: trainings[index]),
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

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/extensions/extensions.dart';

import '../services/services.dart';
import '../widgets/widgets.dart';

@RoutePage()
class TrainingsScreen extends StatefulWidget {
  const TrainingsScreen({super.key});

  @override
  State<TrainingsScreen> createState() => _TrainingsScreenState();
}

class _TrainingsScreenState extends State<TrainingsScreen> {
  final _trainingsService = const TrainingsService();

  TrainingTypeEnum? _selectedFilter;
  late Future<List<TrainingModel>> _trainingsFuture;

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TrainingModel>>(
      future: _trainingsFuture,
      builder: (_, snapshot) {
        final trainings = snapshot.data ?? [];
        final data = _trainingsService.filterByType(trainings, _selectedFilter);

        return AppScaffold(
          theme: ThemeMode.dark,
          scrollable: !snapshot.isWaiting || data.isEmpty,
          onRefresh: _refresh,
          appBar: AppSliverAppBar(
            title: 'Тренування',
            actionsBuilder: (scaffoldContext, _, _) => [
              PingingFilterButton(
                isActive: _selectedFilter != null,
                onPressed: () => showTrainingsFilterBottomSheet(
                  context: scaffoldContext,
                  selectedFilter: _selectedFilter,
                  onChanged: (value) => setState(() => _selectedFilter = value),
                ),
              ),
            ],
          ),
          children: (scaffoldContext) => [
            AppSliverFutureState(
              isEmpty: data.isEmpty,
              isWaiting: snapshot.isWaiting,
              hasError: snapshot.hasError,
              loader: const TrainingsLoader(),
              onRefresh: _refresh,
              emptyText: 'Немає тренувань',
              content: TrainingsList(
                trainings: data,
                onItemTap: (training) => showTrainingInfoDialog(
                  context: scaffoldContext,
                  training: training,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _refresh() async {
    setState(() {
      _trainingsFuture = _trainingsService.getTrainings();
    });
    await _trainingsFuture;
  }
}

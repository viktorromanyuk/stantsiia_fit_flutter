import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/core/supabase/supabase.dart';

class TrainingsService {
  const TrainingsService();

  Future<List<TrainingModel>> getTrainings() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return supabase
        .from('fit_trainings')
        .select('*')
        .withConverter(
          (data) => data.map(TrainingModel.fromJson).toList(),
        );
  }

  List<TrainingModel> filterByType(
    List<TrainingModel> trainings,
    TrainingTypeEnum? filter,
  ) {
    if (filter == null) return trainings;
    return trainings.where((training) => training.type == filter).toList();
  }
}

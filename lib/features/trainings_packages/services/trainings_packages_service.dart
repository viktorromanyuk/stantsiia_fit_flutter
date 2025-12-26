import 'package:stantsiia_fit_flutter/core/models/models.dart';
import 'package:stantsiia_fit_flutter/core/supabase/supabase.dart';

class TrainingsPackagesService {
  const TrainingsPackagesService();

  Future<List<TrainingsPackageModel>> getPackages() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return supabase
        .from('fit_trainings_packages')
        .select('*')
        .withConverter(
          (data) => data.map(TrainingsPackageModel.fromJson).toList(),
        );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainings_package_model.freezed.dart';
part 'trainings_package_model.g.dart';

@freezed
sealed class TrainingsPackageModel with _$TrainingsPackageModel {
  factory TrainingsPackageModel({
    required int id,
    String? name,
    String? description,
    required int duration,
    required double price,
    required int totalTrainings,
    DateTime? createdAt,
  }) = _TrainingsPackageModel;

  factory TrainingsPackageModel.fromJson(Map<String, dynamic> json) => _$TrainingsPackageModelFromJson(json);
}

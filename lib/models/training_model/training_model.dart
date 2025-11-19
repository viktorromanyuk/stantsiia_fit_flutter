import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stantsiia_fit_flutter/core/enums.dart';

part 'training_model.freezed.dart';
part 'training_model.g.dart';

@freezed
sealed class TrainingModel with _$TrainingModel {
  const factory TrainingModel({
    required int id,
    required String name,
    required String description,
    required String label,
    required int duration,
    required int maxAttendees,
    required DateTime createdAt,

    // Enums
    required TrainingLevel level,
    required TrainingType type,
  }) = _TrainingModel;

  factory TrainingModel.fromJson(Map<String, Object?> json) => _$TrainingModelFromJson(json);
}

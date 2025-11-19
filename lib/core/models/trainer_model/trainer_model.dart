import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_model.freezed.dart';
part 'trainer_model.g.dart';

@freezed
sealed class TrainerModel with _$TrainerModel {
  const factory TrainerModel({
    required int id,
    required String name,
    String? image,
    DateTime? createdAt,
  }) = _TrainerModel;

  factory TrainerModel.fromJson(Map<String, Object?> json) => _$TrainerModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_trainings_package_model.freezed.dart';
part 'users_trainings_package_model.g.dart';

@freezed
sealed class UsersTrainingsPackageModel with _$UsersTrainingsPackageModel {
  const factory UsersTrainingsPackageModel({
    required int id,
    DateTime? activatedAt,
    required DateTime createdAt,
    DateTime? expiresAt,
    required int trainingsLeft,
    required int trainingsPackageId,
    required String userId,
  }) = _UsersTrainingsPackageModel;

  factory UsersTrainingsPackageModel.fromJson(Map<String, Object?> json) => _$UsersTrainingsPackageModelFromJson(json);
}

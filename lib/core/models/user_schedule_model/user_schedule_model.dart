import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';

part 'user_schedule_model.freezed.dart';
part 'user_schedule_model.g.dart';

@freezed
sealed class UserScheduleModel with _$UserScheduleModel {
  const factory UserScheduleModel({
    required int id,
    required DateTime createdAt,
    required DateTime date,
    required int scheduleId,
    required UserScheduleEventStatusEnum status,
    required String userId,
    required int userTrainingPackageId,
  }) = _UserScheduleModel;

  factory UserScheduleModel.fromJson(Map<String, Object?> json) => _$UserScheduleModelFromJson(json);
}

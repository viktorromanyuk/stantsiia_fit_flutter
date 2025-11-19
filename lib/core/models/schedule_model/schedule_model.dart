import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
sealed class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    required int id,
    DateTime? createdAt,
    required bool hidden,
    required String startTime,
    required int trainerId,
    required int trainingId,
    required int weekDay,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, Object?> json) => _$ScheduleModelFromJson(json);
}

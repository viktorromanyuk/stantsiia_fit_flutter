import 'package:freezed_annotation/freezed_annotation.dart';
import '../trainer_model/trainer_model.dart';
import '../training_model/training_model.dart';

part 'schedule_event_model.freezed.dart';
part 'schedule_event_model.g.dart';

@freezed
sealed class ScheduleEventModel with _$ScheduleEventModel {
  const factory ScheduleEventModel({
    required int id,
    required String startTime,
    required int weekDay,
    required TrainerModel trainers,
    required TrainingModel trainings,
  }) = _ScheduleEventModel;

  factory ScheduleEventModel.fromJson(Map<String, Object?> json) => _$ScheduleEventModelFromJson(json);
}

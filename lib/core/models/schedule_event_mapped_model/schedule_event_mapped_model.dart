// schedule_event_mapped_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../trainer_model/trainer_model.dart';
import '../training_model/training_model.dart';

part 'schedule_event_mapped_model.freezed.dart';
part 'schedule_event_mapped_model.g.dart';

@freezed
sealed class ScheduleEventMappedModel with _$ScheduleEventMappedModel {
  const factory ScheduleEventMappedModel({
    required int id,
    required String startTime,
    required int weekDay,
    required TrainerModel trainer,
    required TrainingModel training,
  }) = _ScheduleEventMappedModel;

  factory ScheduleEventMappedModel.fromJson(Map<String, Object?> json) => _$ScheduleEventMappedModelFromJson(json);
}

// schedule_event_mapped_with_date_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../trainer_model/trainer_model.dart';
import '../training_model/training_model.dart';

part 'schedule_event_mapped_with_date_model.freezed.dart';
part 'schedule_event_mapped_with_date_model.g.dart';

@freezed
sealed class ScheduleEventMappedWithDateModel with _$ScheduleEventMappedWithDateModel {
  const factory ScheduleEventMappedWithDateModel({
    required int id,
    required String startTime,
    required int weekDay,
    required TrainerModel trainer,
    required TrainingModel training,
    DateTime? date,
  }) = _ScheduleEventMappedWithDateModel;

  factory ScheduleEventMappedWithDateModel.fromJson(
    Map<String, Object?> json,
  ) => _$ScheduleEventMappedWithDateModelFromJson(json);
}

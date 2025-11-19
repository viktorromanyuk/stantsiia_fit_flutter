// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_event_mapped_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleEventMappedModel _$ScheduleEventMappedModelFromJson(
  Map<String, dynamic> json,
) => _ScheduleEventMappedModel(
  id: (json['id'] as num).toInt(),
  startTime: json['startTime'] as String,
  weekDay: (json['weekDay'] as num).toInt(),
  trainer: TrainerModel.fromJson(json['trainer'] as Map<String, dynamic>),
  training: TrainingModel.fromJson(json['training'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduleEventMappedModelToJson(
  _ScheduleEventMappedModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'startTime': instance.startTime,
  'weekDay': instance.weekDay,
  'trainer': instance.trainer,
  'training': instance.training,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_event_mapped_with_date_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleEventMappedWithDateModel _$ScheduleEventMappedWithDateModelFromJson(
  Map<String, dynamic> json,
) => _ScheduleEventMappedWithDateModel(
  id: (json['id'] as num).toInt(),
  startTime: json['startTime'] as String,
  weekDay: (json['weekDay'] as num).toInt(),
  trainer: TrainerModel.fromJson(json['trainer'] as Map<String, dynamic>),
  training: TrainingModel.fromJson(json['training'] as Map<String, dynamic>),
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$ScheduleEventMappedWithDateModelToJson(
  _ScheduleEventMappedWithDateModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'startTime': instance.startTime,
  'weekDay': instance.weekDay,
  'trainer': instance.trainer,
  'training': instance.training,
  'date': instance.date?.toIso8601String(),
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleEventModel _$ScheduleEventModelFromJson(Map<String, dynamic> json) =>
    _ScheduleEventModel(
      id: (json['id'] as num).toInt(),
      startTime: json['startTime'] as String,
      weekDay: (json['weekDay'] as num).toInt(),
      trainers: TrainerModel.fromJson(json['trainers'] as Map<String, dynamic>),
      trainings: TrainingModel.fromJson(
        json['trainings'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ScheduleEventModelToJson(_ScheduleEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime,
      'weekDay': instance.weekDay,
      'trainers': instance.trainers,
      'trainings': instance.trainings,
    };

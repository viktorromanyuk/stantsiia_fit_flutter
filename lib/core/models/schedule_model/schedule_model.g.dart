// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) =>
    _ScheduleModel(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      hidden: json['hidden'] as bool,
      startTime: json['startTime'] as String,
      trainerId: (json['trainerId'] as num).toInt(),
      trainingId: (json['trainingId'] as num).toInt(),
      weekDay: (json['weekDay'] as num).toInt(),
    );

Map<String, dynamic> _$ScheduleModelToJson(_ScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'hidden': instance.hidden,
      'startTime': instance.startTime,
      'trainerId': instance.trainerId,
      'trainingId': instance.trainingId,
      'weekDay': instance.weekDay,
    };

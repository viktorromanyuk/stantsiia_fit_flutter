// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainingModel _$TrainingModelFromJson(Map<String, dynamic> json) =>
    _TrainingModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      label: json['label'] as String,
      duration: (json['duration'] as num).toInt(),
      maxAttendees: (json['maxAttendees'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      level: $enumDecode(_$TrainingLevelEnumEnumMap, json['level']),
      type: $enumDecode(_$TrainingTypeEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$TrainingModelToJson(_TrainingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'label': instance.label,
      'duration': instance.duration,
      'maxAttendees': instance.maxAttendees,
      'createdAt': instance.createdAt.toIso8601String(),
      'level': _$TrainingLevelEnumEnumMap[instance.level]!,
      'type': _$TrainingTypeEnumEnumMap[instance.type]!,
    };

const _$TrainingLevelEnumEnumMap = {
  TrainingLevelEnum.low: 'low',
  TrainingLevelEnum.medium: 'medium',
  TrainingLevelEnum.high: 'high',
};

const _$TrainingTypeEnumEnumMap = {
  TrainingTypeEnum.train: 'train',
  TrainingTypeEnum.dance: 'dance',
  TrainingTypeEnum.relax: 'relax',
};

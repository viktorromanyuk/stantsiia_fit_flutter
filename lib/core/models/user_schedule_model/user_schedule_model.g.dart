// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserScheduleModel _$UserScheduleModelFromJson(Map<String, dynamic> json) =>
    _UserScheduleModel(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      date: DateTime.parse(json['date'] as String),
      scheduleId: (json['scheduleId'] as num).toInt(),
      status: $enumDecode(_$UserScheduleEventStatusEnumEnumMap, json['status']),
      userId: json['userId'] as String,
      userTrainingPackageId: (json['userTrainingPackageId'] as num).toInt(),
    );

Map<String, dynamic> _$UserScheduleModelToJson(_UserScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'date': instance.date.toIso8601String(),
      'scheduleId': instance.scheduleId,
      'status': _$UserScheduleEventStatusEnumEnumMap[instance.status]!,
      'userId': instance.userId,
      'userTrainingPackageId': instance.userTrainingPackageId,
    };

const _$UserScheduleEventStatusEnumEnumMap = {
  UserScheduleEventStatusEnum.active: 'active',
  UserScheduleEventStatusEnum.visited: 'visited',
  UserScheduleEventStatusEnum.missed: 'missed',
  UserScheduleEventStatusEnum.canceled: 'canceled',
};

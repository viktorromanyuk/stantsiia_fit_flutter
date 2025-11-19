// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_trainings_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsersTrainingsPackageModel _$UsersTrainingsPackageModelFromJson(
  Map<String, dynamic> json,
) => _UsersTrainingsPackageModel(
  id: (json['id'] as num).toInt(),
  activatedAt: json['activatedAt'] == null
      ? null
      : DateTime.parse(json['activatedAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  trainingsLeft: (json['trainingsLeft'] as num).toInt(),
  trainingsPackageId: (json['trainingsPackageId'] as num).toInt(),
  userId: json['userId'] as String,
);

Map<String, dynamic> _$UsersTrainingsPackageModelToJson(
  _UsersTrainingsPackageModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'activatedAt': instance.activatedAt?.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'expiresAt': instance.expiresAt?.toIso8601String(),
  'trainingsLeft': instance.trainingsLeft,
  'trainingsPackageId': instance.trainingsPackageId,
  'userId': instance.userId,
};

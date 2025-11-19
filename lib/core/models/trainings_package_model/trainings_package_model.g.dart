// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainings_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainingsPackageModel _$TrainingsPackageModelFromJson(
  Map<String, dynamic> json,
) => _TrainingsPackageModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  duration: (json['duration'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  totalTrainings: (json['totalTrainings'] as num).toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$TrainingsPackageModelToJson(
  _TrainingsPackageModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'duration': instance.duration,
  'price': instance.price,
  'totalTrainings': instance.totalTrainings,
  'createdAt': instance.createdAt?.toIso8601String(),
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) =>
    _InvoiceModel(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      failureReason: json['failureReason'] as String?,
      method: $enumDecode(_$PaymentMethodEnumEnumMap, json['method']),
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
      monobankInvoiceId: json['monobankInvoiceId'] as String?,
      pageUrl: json['pageUrl'] as String?,
      status: $enumDecodeNullable(_$PaymentStatusEnumEnumMap, json['status']),
      trainingsPackageId: (json['trainingsPackageId'] as num).toInt(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$InvoiceModelToJson(_InvoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'failureReason': instance.failureReason,
      'method': _$PaymentMethodEnumEnumMap[instance.method]!,
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
      'monobankInvoiceId': instance.monobankInvoiceId,
      'pageUrl': instance.pageUrl,
      'status': _$PaymentStatusEnumEnumMap[instance.status],
      'trainingsPackageId': instance.trainingsPackageId,
      'userId': instance.userId,
    };

const _$PaymentMethodEnumEnumMap = {
  PaymentMethodEnum.online: 'online',
  PaymentMethodEnum.cash: 'cash',
};

const _$PaymentStatusEnumEnumMap = {
  PaymentStatusEnum.created: 'created',
  PaymentStatusEnum.processing: 'processing',
  PaymentStatusEnum.hold: 'hold',
  PaymentStatusEnum.success: 'success',
  PaymentStatusEnum.failure: 'failure',
  PaymentStatusEnum.reversed: 'reversed',
  PaymentStatusEnum.expired: 'expired',
};

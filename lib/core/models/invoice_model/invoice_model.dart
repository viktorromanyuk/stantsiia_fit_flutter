import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

@freezed
sealed class InvoiceModel with _$InvoiceModel {
  const factory InvoiceModel({
    required int id,
    required DateTime createdAt,
    String? failureReason,
    required PaymentMethodEnum method,
    DateTime? modifiedDate,
    String? monobankInvoiceId,
    String? pageUrl,
    PaymentStatusEnum? status,
    required int trainingsPackageId,
    required String userId,
  }) = _InvoiceModel;

  factory InvoiceModel.fromJson(Map<String, Object?> json) => _$InvoiceModelFromJson(json);
}

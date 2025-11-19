// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoiceModel {

 int get id; DateTime get createdAt; String? get failureReason; PaymentMethodEnum get method; DateTime? get modifiedDate; String? get monobankInvoiceId; String? get pageUrl; PaymentStatusEnum? get status; int get trainingsPackageId; String get userId;
/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceModelCopyWith<InvoiceModel> get copyWith => _$InvoiceModelCopyWithImpl<InvoiceModel>(this as InvoiceModel, _$identity);

  /// Serializes this InvoiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.method, method) || other.method == method)&&(identical(other.modifiedDate, modifiedDate) || other.modifiedDate == modifiedDate)&&(identical(other.monobankInvoiceId, monobankInvoiceId) || other.monobankInvoiceId == monobankInvoiceId)&&(identical(other.pageUrl, pageUrl) || other.pageUrl == pageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.trainingsPackageId, trainingsPackageId) || other.trainingsPackageId == trainingsPackageId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,failureReason,method,modifiedDate,monobankInvoiceId,pageUrl,status,trainingsPackageId,userId);

@override
String toString() {
  return 'InvoiceModel(id: $id, createdAt: $createdAt, failureReason: $failureReason, method: $method, modifiedDate: $modifiedDate, monobankInvoiceId: $monobankInvoiceId, pageUrl: $pageUrl, status: $status, trainingsPackageId: $trainingsPackageId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $InvoiceModelCopyWith<$Res>  {
  factory $InvoiceModelCopyWith(InvoiceModel value, $Res Function(InvoiceModel) _then) = _$InvoiceModelCopyWithImpl;
@useResult
$Res call({
 int id, DateTime createdAt, String? failureReason, PaymentMethodEnum method, DateTime? modifiedDate, String? monobankInvoiceId, String? pageUrl, PaymentStatusEnum? status, int trainingsPackageId, String userId
});




}
/// @nodoc
class _$InvoiceModelCopyWithImpl<$Res>
    implements $InvoiceModelCopyWith<$Res> {
  _$InvoiceModelCopyWithImpl(this._self, this._then);

  final InvoiceModel _self;
  final $Res Function(InvoiceModel) _then;

/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? failureReason = freezed,Object? method = null,Object? modifiedDate = freezed,Object? monobankInvoiceId = freezed,Object? pageUrl = freezed,Object? status = freezed,Object? trainingsPackageId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PaymentMethodEnum,modifiedDate: freezed == modifiedDate ? _self.modifiedDate : modifiedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,monobankInvoiceId: freezed == monobankInvoiceId ? _self.monobankInvoiceId : monobankInvoiceId // ignore: cast_nullable_to_non_nullable
as String?,pageUrl: freezed == pageUrl ? _self.pageUrl : pageUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatusEnum?,trainingsPackageId: null == trainingsPackageId ? _self.trainingsPackageId : trainingsPackageId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceModel].
extension InvoiceModelPatterns on InvoiceModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceModel value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  String? failureReason,  PaymentMethodEnum method,  DateTime? modifiedDate,  String? monobankInvoiceId,  String? pageUrl,  PaymentStatusEnum? status,  int trainingsPackageId,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.failureReason,_that.method,_that.modifiedDate,_that.monobankInvoiceId,_that.pageUrl,_that.status,_that.trainingsPackageId,_that.userId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  String? failureReason,  PaymentMethodEnum method,  DateTime? modifiedDate,  String? monobankInvoiceId,  String? pageUrl,  PaymentStatusEnum? status,  int trainingsPackageId,  String userId)  $default,) {final _that = this;
switch (_that) {
case _InvoiceModel():
return $default(_that.id,_that.createdAt,_that.failureReason,_that.method,_that.modifiedDate,_that.monobankInvoiceId,_that.pageUrl,_that.status,_that.trainingsPackageId,_that.userId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime createdAt,  String? failureReason,  PaymentMethodEnum method,  DateTime? modifiedDate,  String? monobankInvoiceId,  String? pageUrl,  PaymentStatusEnum? status,  int trainingsPackageId,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.failureReason,_that.method,_that.modifiedDate,_that.monobankInvoiceId,_that.pageUrl,_that.status,_that.trainingsPackageId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceModel implements InvoiceModel {
  const _InvoiceModel({required this.id, required this.createdAt, this.failureReason, required this.method, this.modifiedDate, this.monobankInvoiceId, this.pageUrl, this.status, required this.trainingsPackageId, required this.userId});
  factory _InvoiceModel.fromJson(Map<String, dynamic> json) => _$InvoiceModelFromJson(json);

@override final  int id;
@override final  DateTime createdAt;
@override final  String? failureReason;
@override final  PaymentMethodEnum method;
@override final  DateTime? modifiedDate;
@override final  String? monobankInvoiceId;
@override final  String? pageUrl;
@override final  PaymentStatusEnum? status;
@override final  int trainingsPackageId;
@override final  String userId;

/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceModelCopyWith<_InvoiceModel> get copyWith => __$InvoiceModelCopyWithImpl<_InvoiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.method, method) || other.method == method)&&(identical(other.modifiedDate, modifiedDate) || other.modifiedDate == modifiedDate)&&(identical(other.monobankInvoiceId, monobankInvoiceId) || other.monobankInvoiceId == monobankInvoiceId)&&(identical(other.pageUrl, pageUrl) || other.pageUrl == pageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.trainingsPackageId, trainingsPackageId) || other.trainingsPackageId == trainingsPackageId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,failureReason,method,modifiedDate,monobankInvoiceId,pageUrl,status,trainingsPackageId,userId);

@override
String toString() {
  return 'InvoiceModel(id: $id, createdAt: $createdAt, failureReason: $failureReason, method: $method, modifiedDate: $modifiedDate, monobankInvoiceId: $monobankInvoiceId, pageUrl: $pageUrl, status: $status, trainingsPackageId: $trainingsPackageId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$InvoiceModelCopyWith<$Res> implements $InvoiceModelCopyWith<$Res> {
  factory _$InvoiceModelCopyWith(_InvoiceModel value, $Res Function(_InvoiceModel) _then) = __$InvoiceModelCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime createdAt, String? failureReason, PaymentMethodEnum method, DateTime? modifiedDate, String? monobankInvoiceId, String? pageUrl, PaymentStatusEnum? status, int trainingsPackageId, String userId
});




}
/// @nodoc
class __$InvoiceModelCopyWithImpl<$Res>
    implements _$InvoiceModelCopyWith<$Res> {
  __$InvoiceModelCopyWithImpl(this._self, this._then);

  final _InvoiceModel _self;
  final $Res Function(_InvoiceModel) _then;

/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? failureReason = freezed,Object? method = null,Object? modifiedDate = freezed,Object? monobankInvoiceId = freezed,Object? pageUrl = freezed,Object? status = freezed,Object? trainingsPackageId = null,Object? userId = null,}) {
  return _then(_InvoiceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PaymentMethodEnum,modifiedDate: freezed == modifiedDate ? _self.modifiedDate : modifiedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,monobankInvoiceId: freezed == monobankInvoiceId ? _self.monobankInvoiceId : monobankInvoiceId // ignore: cast_nullable_to_non_nullable
as String?,pageUrl: freezed == pageUrl ? _self.pageUrl : pageUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatusEnum?,trainingsPackageId: null == trainingsPackageId ? _self.trainingsPackageId : trainingsPackageId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

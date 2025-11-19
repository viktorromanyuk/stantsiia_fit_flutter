// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_trainings_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersTrainingsPackageModel {

 int get id; DateTime? get activatedAt; DateTime get createdAt; DateTime? get expiresAt; int get trainingsLeft; int get trainingsPackageId; String get userId;
/// Create a copy of UsersTrainingsPackageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersTrainingsPackageModelCopyWith<UsersTrainingsPackageModel> get copyWith => _$UsersTrainingsPackageModelCopyWithImpl<UsersTrainingsPackageModel>(this as UsersTrainingsPackageModel, _$identity);

  /// Serializes this UsersTrainingsPackageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersTrainingsPackageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.trainingsLeft, trainingsLeft) || other.trainingsLeft == trainingsLeft)&&(identical(other.trainingsPackageId, trainingsPackageId) || other.trainingsPackageId == trainingsPackageId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activatedAt,createdAt,expiresAt,trainingsLeft,trainingsPackageId,userId);

@override
String toString() {
  return 'UsersTrainingsPackageModel(id: $id, activatedAt: $activatedAt, createdAt: $createdAt, expiresAt: $expiresAt, trainingsLeft: $trainingsLeft, trainingsPackageId: $trainingsPackageId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UsersTrainingsPackageModelCopyWith<$Res>  {
  factory $UsersTrainingsPackageModelCopyWith(UsersTrainingsPackageModel value, $Res Function(UsersTrainingsPackageModel) _then) = _$UsersTrainingsPackageModelCopyWithImpl;
@useResult
$Res call({
 int id, DateTime? activatedAt, DateTime createdAt, DateTime? expiresAt, int trainingsLeft, int trainingsPackageId, String userId
});




}
/// @nodoc
class _$UsersTrainingsPackageModelCopyWithImpl<$Res>
    implements $UsersTrainingsPackageModelCopyWith<$Res> {
  _$UsersTrainingsPackageModelCopyWithImpl(this._self, this._then);

  final UsersTrainingsPackageModel _self;
  final $Res Function(UsersTrainingsPackageModel) _then;

/// Create a copy of UsersTrainingsPackageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? activatedAt = freezed,Object? createdAt = null,Object? expiresAt = freezed,Object? trainingsLeft = null,Object? trainingsPackageId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,activatedAt: freezed == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,trainingsLeft: null == trainingsLeft ? _self.trainingsLeft : trainingsLeft // ignore: cast_nullable_to_non_nullable
as int,trainingsPackageId: null == trainingsPackageId ? _self.trainingsPackageId : trainingsPackageId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UsersTrainingsPackageModel].
extension UsersTrainingsPackageModelPatterns on UsersTrainingsPackageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsersTrainingsPackageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsersTrainingsPackageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsersTrainingsPackageModel value)  $default,){
final _that = this;
switch (_that) {
case _UsersTrainingsPackageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsersTrainingsPackageModel value)?  $default,){
final _that = this;
switch (_that) {
case _UsersTrainingsPackageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime? activatedAt,  DateTime createdAt,  DateTime? expiresAt,  int trainingsLeft,  int trainingsPackageId,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsersTrainingsPackageModel() when $default != null:
return $default(_that.id,_that.activatedAt,_that.createdAt,_that.expiresAt,_that.trainingsLeft,_that.trainingsPackageId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime? activatedAt,  DateTime createdAt,  DateTime? expiresAt,  int trainingsLeft,  int trainingsPackageId,  String userId)  $default,) {final _that = this;
switch (_that) {
case _UsersTrainingsPackageModel():
return $default(_that.id,_that.activatedAt,_that.createdAt,_that.expiresAt,_that.trainingsLeft,_that.trainingsPackageId,_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime? activatedAt,  DateTime createdAt,  DateTime? expiresAt,  int trainingsLeft,  int trainingsPackageId,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _UsersTrainingsPackageModel() when $default != null:
return $default(_that.id,_that.activatedAt,_that.createdAt,_that.expiresAt,_that.trainingsLeft,_that.trainingsPackageId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsersTrainingsPackageModel implements UsersTrainingsPackageModel {
  const _UsersTrainingsPackageModel({required this.id, this.activatedAt, required this.createdAt, this.expiresAt, required this.trainingsLeft, required this.trainingsPackageId, required this.userId});
  factory _UsersTrainingsPackageModel.fromJson(Map<String, dynamic> json) => _$UsersTrainingsPackageModelFromJson(json);

@override final  int id;
@override final  DateTime? activatedAt;
@override final  DateTime createdAt;
@override final  DateTime? expiresAt;
@override final  int trainingsLeft;
@override final  int trainingsPackageId;
@override final  String userId;

/// Create a copy of UsersTrainingsPackageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersTrainingsPackageModelCopyWith<_UsersTrainingsPackageModel> get copyWith => __$UsersTrainingsPackageModelCopyWithImpl<_UsersTrainingsPackageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsersTrainingsPackageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersTrainingsPackageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.trainingsLeft, trainingsLeft) || other.trainingsLeft == trainingsLeft)&&(identical(other.trainingsPackageId, trainingsPackageId) || other.trainingsPackageId == trainingsPackageId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activatedAt,createdAt,expiresAt,trainingsLeft,trainingsPackageId,userId);

@override
String toString() {
  return 'UsersTrainingsPackageModel(id: $id, activatedAt: $activatedAt, createdAt: $createdAt, expiresAt: $expiresAt, trainingsLeft: $trainingsLeft, trainingsPackageId: $trainingsPackageId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$UsersTrainingsPackageModelCopyWith<$Res> implements $UsersTrainingsPackageModelCopyWith<$Res> {
  factory _$UsersTrainingsPackageModelCopyWith(_UsersTrainingsPackageModel value, $Res Function(_UsersTrainingsPackageModel) _then) = __$UsersTrainingsPackageModelCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime? activatedAt, DateTime createdAt, DateTime? expiresAt, int trainingsLeft, int trainingsPackageId, String userId
});




}
/// @nodoc
class __$UsersTrainingsPackageModelCopyWithImpl<$Res>
    implements _$UsersTrainingsPackageModelCopyWith<$Res> {
  __$UsersTrainingsPackageModelCopyWithImpl(this._self, this._then);

  final _UsersTrainingsPackageModel _self;
  final $Res Function(_UsersTrainingsPackageModel) _then;

/// Create a copy of UsersTrainingsPackageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? activatedAt = freezed,Object? createdAt = null,Object? expiresAt = freezed,Object? trainingsLeft = null,Object? trainingsPackageId = null,Object? userId = null,}) {
  return _then(_UsersTrainingsPackageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,activatedAt: freezed == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,trainingsLeft: null == trainingsLeft ? _self.trainingsLeft : trainingsLeft // ignore: cast_nullable_to_non_nullable
as int,trainingsPackageId: null == trainingsPackageId ? _self.trainingsPackageId : trainingsPackageId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

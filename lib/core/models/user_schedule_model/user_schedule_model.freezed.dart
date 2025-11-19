// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserScheduleModel {

 int get id; DateTime get createdAt; DateTime get date; int get scheduleId; UserScheduleEventStatusEnum get status; String get userId; int get userTrainingPackageId;
/// Create a copy of UserScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserScheduleModelCopyWith<UserScheduleModel> get copyWith => _$UserScheduleModelCopyWithImpl<UserScheduleModel>(this as UserScheduleModel, _$identity);

  /// Serializes this UserScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.date, date) || other.date == date)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userTrainingPackageId, userTrainingPackageId) || other.userTrainingPackageId == userTrainingPackageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,date,scheduleId,status,userId,userTrainingPackageId);

@override
String toString() {
  return 'UserScheduleModel(id: $id, createdAt: $createdAt, date: $date, scheduleId: $scheduleId, status: $status, userId: $userId, userTrainingPackageId: $userTrainingPackageId)';
}


}

/// @nodoc
abstract mixin class $UserScheduleModelCopyWith<$Res>  {
  factory $UserScheduleModelCopyWith(UserScheduleModel value, $Res Function(UserScheduleModel) _then) = _$UserScheduleModelCopyWithImpl;
@useResult
$Res call({
 int id, DateTime createdAt, DateTime date, int scheduleId, UserScheduleEventStatusEnum status, String userId, int userTrainingPackageId
});




}
/// @nodoc
class _$UserScheduleModelCopyWithImpl<$Res>
    implements $UserScheduleModelCopyWith<$Res> {
  _$UserScheduleModelCopyWithImpl(this._self, this._then);

  final UserScheduleModel _self;
  final $Res Function(UserScheduleModel) _then;

/// Create a copy of UserScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? date = null,Object? scheduleId = null,Object? status = null,Object? userId = null,Object? userTrainingPackageId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserScheduleEventStatusEnum,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userTrainingPackageId: null == userTrainingPackageId ? _self.userTrainingPackageId : userTrainingPackageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserScheduleModel].
extension UserScheduleModelPatterns on UserScheduleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserScheduleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserScheduleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserScheduleModel value)  $default,){
final _that = this;
switch (_that) {
case _UserScheduleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserScheduleModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserScheduleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  DateTime date,  int scheduleId,  UserScheduleEventStatusEnum status,  String userId,  int userTrainingPackageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserScheduleModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.date,_that.scheduleId,_that.status,_that.userId,_that.userTrainingPackageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  DateTime date,  int scheduleId,  UserScheduleEventStatusEnum status,  String userId,  int userTrainingPackageId)  $default,) {final _that = this;
switch (_that) {
case _UserScheduleModel():
return $default(_that.id,_that.createdAt,_that.date,_that.scheduleId,_that.status,_that.userId,_that.userTrainingPackageId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime createdAt,  DateTime date,  int scheduleId,  UserScheduleEventStatusEnum status,  String userId,  int userTrainingPackageId)?  $default,) {final _that = this;
switch (_that) {
case _UserScheduleModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.date,_that.scheduleId,_that.status,_that.userId,_that.userTrainingPackageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserScheduleModel implements UserScheduleModel {
  const _UserScheduleModel({required this.id, required this.createdAt, required this.date, required this.scheduleId, required this.status, required this.userId, required this.userTrainingPackageId});
  factory _UserScheduleModel.fromJson(Map<String, dynamic> json) => _$UserScheduleModelFromJson(json);

@override final  int id;
@override final  DateTime createdAt;
@override final  DateTime date;
@override final  int scheduleId;
@override final  UserScheduleEventStatusEnum status;
@override final  String userId;
@override final  int userTrainingPackageId;

/// Create a copy of UserScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserScheduleModelCopyWith<_UserScheduleModel> get copyWith => __$UserScheduleModelCopyWithImpl<_UserScheduleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserScheduleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.date, date) || other.date == date)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userTrainingPackageId, userTrainingPackageId) || other.userTrainingPackageId == userTrainingPackageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,date,scheduleId,status,userId,userTrainingPackageId);

@override
String toString() {
  return 'UserScheduleModel(id: $id, createdAt: $createdAt, date: $date, scheduleId: $scheduleId, status: $status, userId: $userId, userTrainingPackageId: $userTrainingPackageId)';
}


}

/// @nodoc
abstract mixin class _$UserScheduleModelCopyWith<$Res> implements $UserScheduleModelCopyWith<$Res> {
  factory _$UserScheduleModelCopyWith(_UserScheduleModel value, $Res Function(_UserScheduleModel) _then) = __$UserScheduleModelCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime createdAt, DateTime date, int scheduleId, UserScheduleEventStatusEnum status, String userId, int userTrainingPackageId
});




}
/// @nodoc
class __$UserScheduleModelCopyWithImpl<$Res>
    implements _$UserScheduleModelCopyWith<$Res> {
  __$UserScheduleModelCopyWithImpl(this._self, this._then);

  final _UserScheduleModel _self;
  final $Res Function(_UserScheduleModel) _then;

/// Create a copy of UserScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? date = null,Object? scheduleId = null,Object? status = null,Object? userId = null,Object? userTrainingPackageId = null,}) {
  return _then(_UserScheduleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserScheduleEventStatusEnum,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userTrainingPackageId: null == userTrainingPackageId ? _self.userTrainingPackageId : userTrainingPackageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

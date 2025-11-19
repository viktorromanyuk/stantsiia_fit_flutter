// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainingModel {

 int get id; String get name; String get description; String get label; int get duration; int get maxAttendees; DateTime get createdAt; TrainingLevelEnum get level; TrainingTypeEnum get type;
/// Create a copy of TrainingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingModelCopyWith<TrainingModel> get copyWith => _$TrainingModelCopyWithImpl<TrainingModel>(this as TrainingModel, _$identity);

  /// Serializes this TrainingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.label, label) || other.label == label)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.maxAttendees, maxAttendees) || other.maxAttendees == maxAttendees)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.level, level) || other.level == level)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,label,duration,maxAttendees,createdAt,level,type);

@override
String toString() {
  return 'TrainingModel(id: $id, name: $name, description: $description, label: $label, duration: $duration, maxAttendees: $maxAttendees, createdAt: $createdAt, level: $level, type: $type)';
}


}

/// @nodoc
abstract mixin class $TrainingModelCopyWith<$Res>  {
  factory $TrainingModelCopyWith(TrainingModel value, $Res Function(TrainingModel) _then) = _$TrainingModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String label, int duration, int maxAttendees, DateTime createdAt, TrainingLevelEnum level, TrainingTypeEnum type
});




}
/// @nodoc
class _$TrainingModelCopyWithImpl<$Res>
    implements $TrainingModelCopyWith<$Res> {
  _$TrainingModelCopyWithImpl(this._self, this._then);

  final TrainingModel _self;
  final $Res Function(TrainingModel) _then;

/// Create a copy of TrainingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? label = null,Object? duration = null,Object? maxAttendees = null,Object? createdAt = null,Object? level = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,maxAttendees: null == maxAttendees ? _self.maxAttendees : maxAttendees // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as TrainingLevelEnum,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TrainingTypeEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainingModel].
extension TrainingModelPatterns on TrainingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainingModel value)  $default,){
final _that = this;
switch (_that) {
case _TrainingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainingModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrainingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String label,  int duration,  int maxAttendees,  DateTime createdAt,  TrainingLevelEnum level,  TrainingTypeEnum type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainingModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.label,_that.duration,_that.maxAttendees,_that.createdAt,_that.level,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String label,  int duration,  int maxAttendees,  DateTime createdAt,  TrainingLevelEnum level,  TrainingTypeEnum type)  $default,) {final _that = this;
switch (_that) {
case _TrainingModel():
return $default(_that.id,_that.name,_that.description,_that.label,_that.duration,_that.maxAttendees,_that.createdAt,_that.level,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String label,  int duration,  int maxAttendees,  DateTime createdAt,  TrainingLevelEnum level,  TrainingTypeEnum type)?  $default,) {final _that = this;
switch (_that) {
case _TrainingModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.label,_that.duration,_that.maxAttendees,_that.createdAt,_that.level,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainingModel implements TrainingModel {
  const _TrainingModel({required this.id, required this.name, required this.description, required this.label, required this.duration, required this.maxAttendees, required this.createdAt, required this.level, required this.type});
  factory _TrainingModel.fromJson(Map<String, dynamic> json) => _$TrainingModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;
@override final  String label;
@override final  int duration;
@override final  int maxAttendees;
@override final  DateTime createdAt;
@override final  TrainingLevelEnum level;
@override final  TrainingTypeEnum type;

/// Create a copy of TrainingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainingModelCopyWith<_TrainingModel> get copyWith => __$TrainingModelCopyWithImpl<_TrainingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.label, label) || other.label == label)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.maxAttendees, maxAttendees) || other.maxAttendees == maxAttendees)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.level, level) || other.level == level)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,label,duration,maxAttendees,createdAt,level,type);

@override
String toString() {
  return 'TrainingModel(id: $id, name: $name, description: $description, label: $label, duration: $duration, maxAttendees: $maxAttendees, createdAt: $createdAt, level: $level, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TrainingModelCopyWith<$Res> implements $TrainingModelCopyWith<$Res> {
  factory _$TrainingModelCopyWith(_TrainingModel value, $Res Function(_TrainingModel) _then) = __$TrainingModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String label, int duration, int maxAttendees, DateTime createdAt, TrainingLevelEnum level, TrainingTypeEnum type
});




}
/// @nodoc
class __$TrainingModelCopyWithImpl<$Res>
    implements _$TrainingModelCopyWith<$Res> {
  __$TrainingModelCopyWithImpl(this._self, this._then);

  final _TrainingModel _self;
  final $Res Function(_TrainingModel) _then;

/// Create a copy of TrainingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? label = null,Object? duration = null,Object? maxAttendees = null,Object? createdAt = null,Object? level = null,Object? type = null,}) {
  return _then(_TrainingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,maxAttendees: null == maxAttendees ? _self.maxAttendees : maxAttendees // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as TrainingLevelEnum,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TrainingTypeEnum,
  ));
}


}

// dart format on

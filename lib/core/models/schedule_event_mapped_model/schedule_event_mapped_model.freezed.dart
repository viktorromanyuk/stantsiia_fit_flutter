// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_event_mapped_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleEventMappedModel {

 int get id; String get startTime; int get weekDay; TrainerModel get trainer; TrainingModel get training;
/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleEventMappedModelCopyWith<ScheduleEventMappedModel> get copyWith => _$ScheduleEventMappedModelCopyWithImpl<ScheduleEventMappedModel>(this as ScheduleEventMappedModel, _$identity);

  /// Serializes this ScheduleEventMappedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleEventMappedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.trainer, trainer) || other.trainer == trainer)&&(identical(other.training, training) || other.training == training));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,weekDay,trainer,training);

@override
String toString() {
  return 'ScheduleEventMappedModel(id: $id, startTime: $startTime, weekDay: $weekDay, trainer: $trainer, training: $training)';
}


}

/// @nodoc
abstract mixin class $ScheduleEventMappedModelCopyWith<$Res>  {
  factory $ScheduleEventMappedModelCopyWith(ScheduleEventMappedModel value, $Res Function(ScheduleEventMappedModel) _then) = _$ScheduleEventMappedModelCopyWithImpl;
@useResult
$Res call({
 int id, String startTime, int weekDay, TrainerModel trainer, TrainingModel training
});


$TrainerModelCopyWith<$Res> get trainer;$TrainingModelCopyWith<$Res> get training;

}
/// @nodoc
class _$ScheduleEventMappedModelCopyWithImpl<$Res>
    implements $ScheduleEventMappedModelCopyWith<$Res> {
  _$ScheduleEventMappedModelCopyWithImpl(this._self, this._then);

  final ScheduleEventMappedModel _self;
  final $Res Function(ScheduleEventMappedModel) _then;

/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? startTime = null,Object? weekDay = null,Object? trainer = null,Object? training = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,weekDay: null == weekDay ? _self.weekDay : weekDay // ignore: cast_nullable_to_non_nullable
as int,trainer: null == trainer ? _self.trainer : trainer // ignore: cast_nullable_to_non_nullable
as TrainerModel,training: null == training ? _self.training : training // ignore: cast_nullable_to_non_nullable
as TrainingModel,
  ));
}
/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<$Res> get trainer {
  
  return $TrainerModelCopyWith<$Res>(_self.trainer, (value) {
    return _then(_self.copyWith(trainer: value));
  });
}/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingModelCopyWith<$Res> get training {
  
  return $TrainingModelCopyWith<$Res>(_self.training, (value) {
    return _then(_self.copyWith(training: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleEventMappedModel].
extension ScheduleEventMappedModelPatterns on ScheduleEventMappedModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleEventMappedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleEventMappedModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleEventMappedModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleEventMappedModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleEventMappedModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleEventMappedModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String startTime,  int weekDay,  TrainerModel trainer,  TrainingModel training)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleEventMappedModel() when $default != null:
return $default(_that.id,_that.startTime,_that.weekDay,_that.trainer,_that.training);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String startTime,  int weekDay,  TrainerModel trainer,  TrainingModel training)  $default,) {final _that = this;
switch (_that) {
case _ScheduleEventMappedModel():
return $default(_that.id,_that.startTime,_that.weekDay,_that.trainer,_that.training);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String startTime,  int weekDay,  TrainerModel trainer,  TrainingModel training)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleEventMappedModel() when $default != null:
return $default(_that.id,_that.startTime,_that.weekDay,_that.trainer,_that.training);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleEventMappedModel implements ScheduleEventMappedModel {
  const _ScheduleEventMappedModel({required this.id, required this.startTime, required this.weekDay, required this.trainer, required this.training});
  factory _ScheduleEventMappedModel.fromJson(Map<String, dynamic> json) => _$ScheduleEventMappedModelFromJson(json);

@override final  int id;
@override final  String startTime;
@override final  int weekDay;
@override final  TrainerModel trainer;
@override final  TrainingModel training;

/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleEventMappedModelCopyWith<_ScheduleEventMappedModel> get copyWith => __$ScheduleEventMappedModelCopyWithImpl<_ScheduleEventMappedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleEventMappedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleEventMappedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.trainer, trainer) || other.trainer == trainer)&&(identical(other.training, training) || other.training == training));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,weekDay,trainer,training);

@override
String toString() {
  return 'ScheduleEventMappedModel(id: $id, startTime: $startTime, weekDay: $weekDay, trainer: $trainer, training: $training)';
}


}

/// @nodoc
abstract mixin class _$ScheduleEventMappedModelCopyWith<$Res> implements $ScheduleEventMappedModelCopyWith<$Res> {
  factory _$ScheduleEventMappedModelCopyWith(_ScheduleEventMappedModel value, $Res Function(_ScheduleEventMappedModel) _then) = __$ScheduleEventMappedModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String startTime, int weekDay, TrainerModel trainer, TrainingModel training
});


@override $TrainerModelCopyWith<$Res> get trainer;@override $TrainingModelCopyWith<$Res> get training;

}
/// @nodoc
class __$ScheduleEventMappedModelCopyWithImpl<$Res>
    implements _$ScheduleEventMappedModelCopyWith<$Res> {
  __$ScheduleEventMappedModelCopyWithImpl(this._self, this._then);

  final _ScheduleEventMappedModel _self;
  final $Res Function(_ScheduleEventMappedModel) _then;

/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startTime = null,Object? weekDay = null,Object? trainer = null,Object? training = null,}) {
  return _then(_ScheduleEventMappedModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,weekDay: null == weekDay ? _self.weekDay : weekDay // ignore: cast_nullable_to_non_nullable
as int,trainer: null == trainer ? _self.trainer : trainer // ignore: cast_nullable_to_non_nullable
as TrainerModel,training: null == training ? _self.training : training // ignore: cast_nullable_to_non_nullable
as TrainingModel,
  ));
}

/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<$Res> get trainer {
  
  return $TrainerModelCopyWith<$Res>(_self.trainer, (value) {
    return _then(_self.copyWith(trainer: value));
  });
}/// Create a copy of ScheduleEventMappedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingModelCopyWith<$Res> get training {
  
  return $TrainingModelCopyWith<$Res>(_self.training, (value) {
    return _then(_self.copyWith(training: value));
  });
}
}

// dart format on

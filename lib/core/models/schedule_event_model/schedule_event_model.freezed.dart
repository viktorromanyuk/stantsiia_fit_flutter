// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleEventModel {

 int get id; String get startTime; int get weekDay; TrainerModel get trainer; TrainingModel get training; DateTime? get date;
/// Create a copy of ScheduleEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleEventModelCopyWith<ScheduleEventModel> get copyWith => _$ScheduleEventModelCopyWithImpl<ScheduleEventModel>(this as ScheduleEventModel, _$identity);

  /// Serializes this ScheduleEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleEventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.trainer, trainer) || other.trainer == trainer)&&(identical(other.training, training) || other.training == training)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,weekDay,trainer,training,date);

@override
String toString() {
  return 'ScheduleEventModel(id: $id, startTime: $startTime, weekDay: $weekDay, trainer: $trainer, training: $training, date: $date)';
}


}

/// @nodoc
abstract mixin class $ScheduleEventModelCopyWith<$Res>  {
  factory $ScheduleEventModelCopyWith(ScheduleEventModel value, $Res Function(ScheduleEventModel) _then) = _$ScheduleEventModelCopyWithImpl;
@useResult
$Res call({
 int id, String startTime, int weekDay, TrainerModel trainer, TrainingModel training, DateTime? date
});


$TrainerModelCopyWith<$Res> get trainer;$TrainingModelCopyWith<$Res> get training;

}
/// @nodoc
class _$ScheduleEventModelCopyWithImpl<$Res>
    implements $ScheduleEventModelCopyWith<$Res> {
  _$ScheduleEventModelCopyWithImpl(this._self, this._then);

  final ScheduleEventModel _self;
  final $Res Function(ScheduleEventModel) _then;

/// Create a copy of ScheduleEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? startTime = null,Object? weekDay = null,Object? trainer = null,Object? training = null,Object? date = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,weekDay: null == weekDay ? _self.weekDay : weekDay // ignore: cast_nullable_to_non_nullable
as int,trainer: null == trainer ? _self.trainer : trainer // ignore: cast_nullable_to_non_nullable
as TrainerModel,training: null == training ? _self.training : training // ignore: cast_nullable_to_non_nullable
as TrainingModel,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ScheduleEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<$Res> get trainer {
  
  return $TrainerModelCopyWith<$Res>(_self.trainer, (value) {
    return _then(_self.copyWith(trainer: value));
  });
}/// Create a copy of ScheduleEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingModelCopyWith<$Res> get training {
  
  return $TrainingModelCopyWith<$Res>(_self.training, (value) {
    return _then(_self.copyWith(training: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleEventModel].
extension ScheduleEventModelPatterns on ScheduleEventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleEventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleEventModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleEventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleEventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String startTime,  int weekDay,  TrainerModel trainer,  TrainingModel training,  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleEventModel() when $default != null:
return $default(_that.id,_that.startTime,_that.weekDay,_that.trainer,_that.training,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String startTime,  int weekDay,  TrainerModel trainer,  TrainingModel training,  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _ScheduleEventModel():
return $default(_that.id,_that.startTime,_that.weekDay,_that.trainer,_that.training,_that.date);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String startTime,  int weekDay,  TrainerModel trainer,  TrainingModel training,  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleEventModel() when $default != null:
return $default(_that.id,_that.startTime,_that.weekDay,_that.trainer,_that.training,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleEventModel implements ScheduleEventModel {
  const _ScheduleEventModel({required this.id, required this.startTime, required this.weekDay, required this.trainer, required this.training, this.date});
  factory _ScheduleEventModel.fromJson(Map<String, dynamic> json) => _$ScheduleEventModelFromJson(json);

@override final  int id;
@override final  String startTime;
@override final  int weekDay;
@override final  TrainerModel trainer;
@override final  TrainingModel training;
@override final  DateTime? date;

/// Create a copy of ScheduleEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleEventModelCopyWith<_ScheduleEventModel> get copyWith => __$ScheduleEventModelCopyWithImpl<_ScheduleEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleEventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.trainer, trainer) || other.trainer == trainer)&&(identical(other.training, training) || other.training == training)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,weekDay,trainer,training,date);

@override
String toString() {
  return 'ScheduleEventModel(id: $id, startTime: $startTime, weekDay: $weekDay, trainer: $trainer, training: $training, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ScheduleEventModelCopyWith<$Res> implements $ScheduleEventModelCopyWith<$Res> {
  factory _$ScheduleEventModelCopyWith(_ScheduleEventModel value, $Res Function(_ScheduleEventModel) _then) = __$ScheduleEventModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String startTime, int weekDay, TrainerModel trainer, TrainingModel training, DateTime? date
});


@override $TrainerModelCopyWith<$Res> get trainer;@override $TrainingModelCopyWith<$Res> get training;

}
/// @nodoc
class __$ScheduleEventModelCopyWithImpl<$Res>
    implements _$ScheduleEventModelCopyWith<$Res> {
  __$ScheduleEventModelCopyWithImpl(this._self, this._then);

  final _ScheduleEventModel _self;
  final $Res Function(_ScheduleEventModel) _then;

/// Create a copy of ScheduleEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startTime = null,Object? weekDay = null,Object? trainer = null,Object? training = null,Object? date = freezed,}) {
  return _then(_ScheduleEventModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,weekDay: null == weekDay ? _self.weekDay : weekDay // ignore: cast_nullable_to_non_nullable
as int,trainer: null == trainer ? _self.trainer : trainer // ignore: cast_nullable_to_non_nullable
as TrainerModel,training: null == training ? _self.training : training // ignore: cast_nullable_to_non_nullable
as TrainingModel,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ScheduleEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<$Res> get trainer {
  
  return $TrainerModelCopyWith<$Res>(_self.trainer, (value) {
    return _then(_self.copyWith(trainer: value));
  });
}/// Create a copy of ScheduleEventModel
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

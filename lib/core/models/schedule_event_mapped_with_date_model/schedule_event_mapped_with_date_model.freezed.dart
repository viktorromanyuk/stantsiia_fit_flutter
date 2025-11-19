// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_event_mapped_with_date_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleEventMappedWithDateModel {

 int get id; String get startTime; int get weekDay; TrainerModel get trainer; TrainingModel get training; DateTime? get date;
/// Create a copy of ScheduleEventMappedWithDateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleEventMappedWithDateModelCopyWith<ScheduleEventMappedWithDateModel> get copyWith => _$ScheduleEventMappedWithDateModelCopyWithImpl<ScheduleEventMappedWithDateModel>(this as ScheduleEventMappedWithDateModel, _$identity);

  /// Serializes this ScheduleEventMappedWithDateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleEventMappedWithDateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.trainer, trainer) || other.trainer == trainer)&&(identical(other.training, training) || other.training == training)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,weekDay,trainer,training,date);

@override
String toString() {
  return 'ScheduleEventMappedWithDateModel(id: $id, startTime: $startTime, weekDay: $weekDay, trainer: $trainer, training: $training, date: $date)';
}


}

/// @nodoc
abstract mixin class $ScheduleEventMappedWithDateModelCopyWith<$Res>  {
  factory $ScheduleEventMappedWithDateModelCopyWith(ScheduleEventMappedWithDateModel value, $Res Function(ScheduleEventMappedWithDateModel) _then) = _$ScheduleEventMappedWithDateModelCopyWithImpl;
@useResult
$Res call({
 int id, String startTime, int weekDay, TrainerModel trainer, TrainingModel training, DateTime? date
});


$TrainerModelCopyWith<$Res> get trainer;$TrainingModelCopyWith<$Res> get training;

}
/// @nodoc
class _$ScheduleEventMappedWithDateModelCopyWithImpl<$Res>
    implements $ScheduleEventMappedWithDateModelCopyWith<$Res> {
  _$ScheduleEventMappedWithDateModelCopyWithImpl(this._self, this._then);

  final ScheduleEventMappedWithDateModel _self;
  final $Res Function(ScheduleEventMappedWithDateModel) _then;

/// Create a copy of ScheduleEventMappedWithDateModel
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
/// Create a copy of ScheduleEventMappedWithDateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<$Res> get trainer {
  
  return $TrainerModelCopyWith<$Res>(_self.trainer, (value) {
    return _then(_self.copyWith(trainer: value));
  });
}/// Create a copy of ScheduleEventMappedWithDateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingModelCopyWith<$Res> get training {
  
  return $TrainingModelCopyWith<$Res>(_self.training, (value) {
    return _then(_self.copyWith(training: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleEventMappedWithDateModel].
extension ScheduleEventMappedWithDateModelPatterns on ScheduleEventMappedWithDateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleEventMappedWithDateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleEventMappedWithDateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleEventMappedWithDateModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleEventMappedWithDateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleEventMappedWithDateModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleEventMappedWithDateModel() when $default != null:
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
case _ScheduleEventMappedWithDateModel() when $default != null:
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
case _ScheduleEventMappedWithDateModel():
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
case _ScheduleEventMappedWithDateModel() when $default != null:
return $default(_that.id,_that.startTime,_that.weekDay,_that.trainer,_that.training,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleEventMappedWithDateModel implements ScheduleEventMappedWithDateModel {
  const _ScheduleEventMappedWithDateModel({required this.id, required this.startTime, required this.weekDay, required this.trainer, required this.training, this.date});
  factory _ScheduleEventMappedWithDateModel.fromJson(Map<String, dynamic> json) => _$ScheduleEventMappedWithDateModelFromJson(json);

@override final  int id;
@override final  String startTime;
@override final  int weekDay;
@override final  TrainerModel trainer;
@override final  TrainingModel training;
@override final  DateTime? date;

/// Create a copy of ScheduleEventMappedWithDateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleEventMappedWithDateModelCopyWith<_ScheduleEventMappedWithDateModel> get copyWith => __$ScheduleEventMappedWithDateModelCopyWithImpl<_ScheduleEventMappedWithDateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleEventMappedWithDateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleEventMappedWithDateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.trainer, trainer) || other.trainer == trainer)&&(identical(other.training, training) || other.training == training)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,weekDay,trainer,training,date);

@override
String toString() {
  return 'ScheduleEventMappedWithDateModel(id: $id, startTime: $startTime, weekDay: $weekDay, trainer: $trainer, training: $training, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ScheduleEventMappedWithDateModelCopyWith<$Res> implements $ScheduleEventMappedWithDateModelCopyWith<$Res> {
  factory _$ScheduleEventMappedWithDateModelCopyWith(_ScheduleEventMappedWithDateModel value, $Res Function(_ScheduleEventMappedWithDateModel) _then) = __$ScheduleEventMappedWithDateModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String startTime, int weekDay, TrainerModel trainer, TrainingModel training, DateTime? date
});


@override $TrainerModelCopyWith<$Res> get trainer;@override $TrainingModelCopyWith<$Res> get training;

}
/// @nodoc
class __$ScheduleEventMappedWithDateModelCopyWithImpl<$Res>
    implements _$ScheduleEventMappedWithDateModelCopyWith<$Res> {
  __$ScheduleEventMappedWithDateModelCopyWithImpl(this._self, this._then);

  final _ScheduleEventMappedWithDateModel _self;
  final $Res Function(_ScheduleEventMappedWithDateModel) _then;

/// Create a copy of ScheduleEventMappedWithDateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startTime = null,Object? weekDay = null,Object? trainer = null,Object? training = null,Object? date = freezed,}) {
  return _then(_ScheduleEventMappedWithDateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,weekDay: null == weekDay ? _self.weekDay : weekDay // ignore: cast_nullable_to_non_nullable
as int,trainer: null == trainer ? _self.trainer : trainer // ignore: cast_nullable_to_non_nullable
as TrainerModel,training: null == training ? _self.training : training // ignore: cast_nullable_to_non_nullable
as TrainingModel,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ScheduleEventMappedWithDateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<$Res> get trainer {
  
  return $TrainerModelCopyWith<$Res>(_self.trainer, (value) {
    return _then(_self.copyWith(trainer: value));
  });
}/// Create a copy of ScheduleEventMappedWithDateModel
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

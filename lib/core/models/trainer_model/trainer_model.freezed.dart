// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainerModel {

 int get id; String get name; String? get image; DateTime? get createdAt;
/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<TrainerModel> get copyWith => _$TrainerModelCopyWithImpl<TrainerModel>(this as TrainerModel, _$identity);

  /// Serializes this TrainerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,createdAt);

@override
String toString() {
  return 'TrainerModel(id: $id, name: $name, image: $image, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TrainerModelCopyWith<$Res>  {
  factory $TrainerModelCopyWith(TrainerModel value, $Res Function(TrainerModel) _then) = _$TrainerModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? image, DateTime? createdAt
});




}
/// @nodoc
class _$TrainerModelCopyWithImpl<$Res>
    implements $TrainerModelCopyWith<$Res> {
  _$TrainerModelCopyWithImpl(this._self, this._then);

  final TrainerModel _self;
  final $Res Function(TrainerModel) _then;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainerModel].
extension TrainerModelPatterns on TrainerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainerModel value)  $default,){
final _that = this;
switch (_that) {
case _TrainerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainerModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? image,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? image,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _TrainerModel():
return $default(_that.id,_that.name,_that.image,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? image,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainerModel implements TrainerModel {
  const _TrainerModel({required this.id, required this.name, this.image, this.createdAt});
  factory _TrainerModel.fromJson(Map<String, dynamic> json) => _$TrainerModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? image;
@override final  DateTime? createdAt;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainerModelCopyWith<_TrainerModel> get copyWith => __$TrainerModelCopyWithImpl<_TrainerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,createdAt);

@override
String toString() {
  return 'TrainerModel(id: $id, name: $name, image: $image, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TrainerModelCopyWith<$Res> implements $TrainerModelCopyWith<$Res> {
  factory _$TrainerModelCopyWith(_TrainerModel value, $Res Function(_TrainerModel) _then) = __$TrainerModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? image, DateTime? createdAt
});




}
/// @nodoc
class __$TrainerModelCopyWithImpl<$Res>
    implements _$TrainerModelCopyWith<$Res> {
  __$TrainerModelCopyWithImpl(this._self, this._then);

  final _TrainerModel _self;
  final $Res Function(_TrainerModel) _then;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = freezed,Object? createdAt = freezed,}) {
  return _then(_TrainerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

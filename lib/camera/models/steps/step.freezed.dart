// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageStep {

 IconData get imagePath; String get description; String get id; Map<String, dynamic>? get metadata;
/// Create a copy of ImageStep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageStepCopyWith<ImageStep> get copyWith => _$ImageStepCopyWithImpl<ImageStep>(this as ImageStep, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageStep&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,description,id,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ImageStep(imagePath: $imagePath, description: $description, id: $id, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ImageStepCopyWith<$Res>  {
  factory $ImageStepCopyWith(ImageStep value, $Res Function(ImageStep) _then) = _$ImageStepCopyWithImpl;
@useResult
$Res call({
 IconData imagePath, String description, String id, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$ImageStepCopyWithImpl<$Res>
    implements $ImageStepCopyWith<$Res> {
  _$ImageStepCopyWithImpl(this._self, this._then);

  final ImageStep _self;
  final $Res Function(ImageStep) _then;

/// Create a copy of ImageStep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = null,Object? description = null,Object? id = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as IconData,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageStep].
extension ImageStepPatterns on ImageStep {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageStep value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageStep() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageStep value)  $default,){
final _that = this;
switch (_that) {
case _ImageStep():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageStep value)?  $default,){
final _that = this;
switch (_that) {
case _ImageStep() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IconData imagePath,  String description,  String id,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageStep() when $default != null:
return $default(_that.imagePath,_that.description,_that.id,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IconData imagePath,  String description,  String id,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _ImageStep():
return $default(_that.imagePath,_that.description,_that.id,_that.metadata);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IconData imagePath,  String description,  String id,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _ImageStep() when $default != null:
return $default(_that.imagePath,_that.description,_that.id,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _ImageStep implements ImageStep {
   _ImageStep({required this.imagePath, required this.description, required this.id, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  

@override final  IconData imagePath;
@override final  String description;
@override final  String id;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ImageStep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageStepCopyWith<_ImageStep> get copyWith => __$ImageStepCopyWithImpl<_ImageStep>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageStep&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,description,id,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ImageStep(imagePath: $imagePath, description: $description, id: $id, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ImageStepCopyWith<$Res> implements $ImageStepCopyWith<$Res> {
  factory _$ImageStepCopyWith(_ImageStep value, $Res Function(_ImageStep) _then) = __$ImageStepCopyWithImpl;
@override @useResult
$Res call({
 IconData imagePath, String description, String id, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$ImageStepCopyWithImpl<$Res>
    implements _$ImageStepCopyWith<$Res> {
  __$ImageStepCopyWithImpl(this._self, this._then);

  final _ImageStep _self;
  final $Res Function(_ImageStep) _then;

/// Create a copy of ImageStep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imagePath = null,Object? description = null,Object? id = null,Object? metadata = freezed,}) {
  return _then(_ImageStep(
imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as IconData,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on

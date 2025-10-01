// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraUiState {

 bool get isInitialized; bool get isRecording; bool get isInitializing; List<camera_lib.CameraDescription> get cameras; int get currenStep; bool get isValidatingStep;
/// Create a copy of CameraUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraUiStateCopyWith<CameraUiState> get copyWith => _$CameraUiStateCopyWithImpl<CameraUiState>(this as CameraUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraUiState&&(identical(other.isInitialized, isInitialized) || other.isInitialized == isInitialized)&&(identical(other.isRecording, isRecording) || other.isRecording == isRecording)&&(identical(other.isInitializing, isInitializing) || other.isInitializing == isInitializing)&&const DeepCollectionEquality().equals(other.cameras, cameras)&&(identical(other.currenStep, currenStep) || other.currenStep == currenStep)&&(identical(other.isValidatingStep, isValidatingStep) || other.isValidatingStep == isValidatingStep));
}


@override
int get hashCode => Object.hash(runtimeType,isInitialized,isRecording,isInitializing,const DeepCollectionEquality().hash(cameras),currenStep,isValidatingStep);

@override
String toString() {
  return 'CameraUiState(isInitialized: $isInitialized, isRecording: $isRecording, isInitializing: $isInitializing, cameras: $cameras, currenStep: $currenStep, isValidatingStep: $isValidatingStep)';
}


}

/// @nodoc
abstract mixin class $CameraUiStateCopyWith<$Res>  {
  factory $CameraUiStateCopyWith(CameraUiState value, $Res Function(CameraUiState) _then) = _$CameraUiStateCopyWithImpl;
@useResult
$Res call({
 bool isInitialized, bool isRecording, bool isInitializing, List<camera_lib.CameraDescription> cameras, int currenStep, bool isValidatingStep
});




}
/// @nodoc
class _$CameraUiStateCopyWithImpl<$Res>
    implements $CameraUiStateCopyWith<$Res> {
  _$CameraUiStateCopyWithImpl(this._self, this._then);

  final CameraUiState _self;
  final $Res Function(CameraUiState) _then;

/// Create a copy of CameraUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isInitialized = null,Object? isRecording = null,Object? isInitializing = null,Object? cameras = null,Object? currenStep = null,Object? isValidatingStep = null,}) {
  return _then(_self.copyWith(
isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,isRecording: null == isRecording ? _self.isRecording : isRecording // ignore: cast_nullable_to_non_nullable
as bool,isInitializing: null == isInitializing ? _self.isInitializing : isInitializing // ignore: cast_nullable_to_non_nullable
as bool,cameras: null == cameras ? _self.cameras : cameras // ignore: cast_nullable_to_non_nullable
as List<camera_lib.CameraDescription>,currenStep: null == currenStep ? _self.currenStep : currenStep // ignore: cast_nullable_to_non_nullable
as int,isValidatingStep: null == isValidatingStep ? _self.isValidatingStep : isValidatingStep // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CameraUiState].
extension CameraUiStatePatterns on CameraUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CameraUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CameraUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CameraUiState value)  $default,){
final _that = this;
switch (_that) {
case _CameraUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CameraUiState value)?  $default,){
final _that = this;
switch (_that) {
case _CameraUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isInitialized,  bool isRecording,  bool isInitializing,  List<camera_lib.CameraDescription> cameras,  int currenStep,  bool isValidatingStep)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CameraUiState() when $default != null:
return $default(_that.isInitialized,_that.isRecording,_that.isInitializing,_that.cameras,_that.currenStep,_that.isValidatingStep);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isInitialized,  bool isRecording,  bool isInitializing,  List<camera_lib.CameraDescription> cameras,  int currenStep,  bool isValidatingStep)  $default,) {final _that = this;
switch (_that) {
case _CameraUiState():
return $default(_that.isInitialized,_that.isRecording,_that.isInitializing,_that.cameras,_that.currenStep,_that.isValidatingStep);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isInitialized,  bool isRecording,  bool isInitializing,  List<camera_lib.CameraDescription> cameras,  int currenStep,  bool isValidatingStep)?  $default,) {final _that = this;
switch (_that) {
case _CameraUiState() when $default != null:
return $default(_that.isInitialized,_that.isRecording,_that.isInitializing,_that.cameras,_that.currenStep,_that.isValidatingStep);case _:
  return null;

}
}

}

/// @nodoc


class _CameraUiState implements CameraUiState {
   _CameraUiState({required this.isInitialized, required this.isRecording, this.isInitializing = false, final  List<camera_lib.CameraDescription> cameras = const [], this.currenStep = 0, this.isValidatingStep = false}): _cameras = cameras;
  

@override final  bool isInitialized;
@override final  bool isRecording;
@override@JsonKey() final  bool isInitializing;
 final  List<camera_lib.CameraDescription> _cameras;
@override@JsonKey() List<camera_lib.CameraDescription> get cameras {
  if (_cameras is EqualUnmodifiableListView) return _cameras;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cameras);
}

@override@JsonKey() final  int currenStep;
@override@JsonKey() final  bool isValidatingStep;

/// Create a copy of CameraUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraUiStateCopyWith<_CameraUiState> get copyWith => __$CameraUiStateCopyWithImpl<_CameraUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraUiState&&(identical(other.isInitialized, isInitialized) || other.isInitialized == isInitialized)&&(identical(other.isRecording, isRecording) || other.isRecording == isRecording)&&(identical(other.isInitializing, isInitializing) || other.isInitializing == isInitializing)&&const DeepCollectionEquality().equals(other._cameras, _cameras)&&(identical(other.currenStep, currenStep) || other.currenStep == currenStep)&&(identical(other.isValidatingStep, isValidatingStep) || other.isValidatingStep == isValidatingStep));
}


@override
int get hashCode => Object.hash(runtimeType,isInitialized,isRecording,isInitializing,const DeepCollectionEquality().hash(_cameras),currenStep,isValidatingStep);

@override
String toString() {
  return 'CameraUiState(isInitialized: $isInitialized, isRecording: $isRecording, isInitializing: $isInitializing, cameras: $cameras, currenStep: $currenStep, isValidatingStep: $isValidatingStep)';
}


}

/// @nodoc
abstract mixin class _$CameraUiStateCopyWith<$Res> implements $CameraUiStateCopyWith<$Res> {
  factory _$CameraUiStateCopyWith(_CameraUiState value, $Res Function(_CameraUiState) _then) = __$CameraUiStateCopyWithImpl;
@override @useResult
$Res call({
 bool isInitialized, bool isRecording, bool isInitializing, List<camera_lib.CameraDescription> cameras, int currenStep, bool isValidatingStep
});




}
/// @nodoc
class __$CameraUiStateCopyWithImpl<$Res>
    implements _$CameraUiStateCopyWith<$Res> {
  __$CameraUiStateCopyWithImpl(this._self, this._then);

  final _CameraUiState _self;
  final $Res Function(_CameraUiState) _then;

/// Create a copy of CameraUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isInitialized = null,Object? isRecording = null,Object? isInitializing = null,Object? cameras = null,Object? currenStep = null,Object? isValidatingStep = null,}) {
  return _then(_CameraUiState(
isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,isRecording: null == isRecording ? _self.isRecording : isRecording // ignore: cast_nullable_to_non_nullable
as bool,isInitializing: null == isInitializing ? _self.isInitializing : isInitializing // ignore: cast_nullable_to_non_nullable
as bool,cameras: null == cameras ? _self._cameras : cameras // ignore: cast_nullable_to_non_nullable
as List<camera_lib.CameraDescription>,currenStep: null == currenStep ? _self.currenStep : currenStep // ignore: cast_nullable_to_non_nullable
as int,isValidatingStep: null == isValidatingStep ? _self.isValidatingStep : isValidatingStep // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

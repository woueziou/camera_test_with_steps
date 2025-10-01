import 'package:freezed_annotation/freezed_annotation.dart';
import "package:camera/camera.dart" as camera_lib;
part 'camera_ui_state.freezed.dart';
// part 'camera_ui_state.g.dart';

@freezed
abstract class CameraUiState with _$CameraUiState {
  factory CameraUiState({
    required bool isInitialized,
    required bool isRecording,
    @Default(false) bool isInitializing,
    @Default([]) List<camera_lib.CameraDescription> cameras,
    @Default(0) int currenStep,
    @Default(false) bool isValidatingStep,
  }) = _CameraUiState;

  // factory CameraUiState.fromJson(Map<String, dynamic> json) =>
  //     _$CameraUiStateFromJson(json);

  // @override
  // Map<String, dynamic> toJson()=> _$CameraUiStateToJson(this);
}

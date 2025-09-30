import 'package:camera_test/camera/models/uiState/camera_ui_state.dart';
import 'package:flutter/foundation.dart';
import "package:camera/camera.dart" as camera_lib;

class CameraUiController {
  static final CameraUiController _instance = CameraUiController._internal();
  late camera_lib.CameraController controller;
  CameraUiController._internal();
  CameraUiState _cameraUiState = CameraUiState(
    isInitialized: false,
    isRecording: false,
  );

  factory CameraUiController() {
    return _instance;
  }

  Future<void> initialize() async {
    // Initialization code here
    final cameras = await camera_lib.availableCameras();
    _applyEffect(
      _cameraUiState.copyWith(cameras: cameras),
    ); // update the ui to know that the controller fetched the available cameras

    // initialize the camera controller with the first available camera
    controller = camera_lib.CameraController(
      cameras.first,
      camera_lib.ResolutionPreset.medium,
    );
    _applyEffect(
      _cameraUiState.copyWith(isInitialized: true),
    ); // Notify UI the initialization is completed
  }

  ValueNotifier<CameraUiState> uiState = ValueNotifier<CameraUiState>(
    CameraUiState(isInitialized: false, isRecording: false),
  );

  void _applyEffect(CameraUiState newState) {
    _cameraUiState = newState;
    uiState.value = _cameraUiState;
  }
}

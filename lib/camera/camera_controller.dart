import 'package:camera_test/camera/models/steps/step.dart';
import 'package:camera_test/camera/models/uiState/camera_ui_state.dart';
import 'package:camera_test/preview/preview-ui.dart';
import 'package:flutter/foundation.dart';
import "package:camera/camera.dart" as camera_lib;
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraUiController {
  static final CameraUiController _instance = CameraUiController._internal();
  late camera_lib.CameraController controller;
  Map<String, String> stepImages = {};
  CameraUiController._internal();
  CameraUiState _cameraUiState = CameraUiState(
    isInitialized: false,
    isRecording: false,
  );

  List<ImageStep> get steps => ImageStep.getStesps();

  factory CameraUiController() {
    return _instance;
  }

  Future<void> initialize() async {
    try {
      _applyEffect(_cameraUiState.copyWith(isInitializing: true));
      final permissions = [Permission.camera, Permission.microphone];
      await permissions.request();
      if (await Permission.camera.isDenied ||
          await Permission.microphone.isDenied) {
        _applyEffect(
          _cameraUiState.copyWith(isInitialized: false, isInitializing: false),
        );

        return;
      }
      // Initialization code here
      final cameras = await camera_lib.availableCameras();
      _applyEffect(
        _cameraUiState.copyWith(cameras: cameras),
      ); // update the ui to know that the controller fetched the available cameras

      // initialize the camera controller with the first available camera
      controller = camera_lib.CameraController(
        cameras.first,
        camera_lib.ResolutionPreset.veryHigh,
      );
      await controller.initialize();
      _applyEffect(_cameraUiState.copyWith(isInitialized: true));
    } on Exception catch (e) {
      // TODO
    } finally {
      _applyEffect(_cameraUiState.copyWith(isInitializing: false));
    }
    // Notify UI the initialization is completed
  }

  ValueNotifier<CameraUiState> uiState = ValueNotifier<CameraUiState>(
    CameraUiState(isInitialized: false, isRecording: false),
  );

  void _applyEffect(CameraUiState newState) {
    _cameraUiState = newState;
    uiState.value = _cameraUiState;
  }

  void validateStep({required BuildContext context}) {
    if (_cameraUiState.currenStep < steps.length - 1) {
      // Save image path
      _applyEffect(
        _cameraUiState.copyWith(
          currenStep: _cameraUiState.currenStep + 1,
          isValidatingStep: false,
        ),
      );
    } else if (_cameraUiState.currenStep == steps.length - 1) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("All steps completed")));
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            debugPrint("Sending images: $stepImages");
            return ImagePreview(images: stepImages);
          },
        ),
      );
      // stepImages = {};
      // _applyEffect(
      //   _cameraUiState.copyWith(
      //     currenStep:0,
      //     isValidatingStep: false,          
      //   ),
        
      // );
      return;
    }
  }

  void redoStep() {
    _applyEffect(_cameraUiState.copyWith(isValidatingStep: false));
  }

  Future<void> snapStepPicture() async {
    await _takePicture();
    _applyEffect(_cameraUiState.copyWith(isValidatingStep: true));
  }

  Future<void> _takePicture() async {
    if (!controller.value.isInitialized) {
      return;
    }
    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return;
    }
    try {
      final picture = await controller.takePicture();
      final step = steps[_cameraUiState.currenStep];
      stepImages[step.id] = picture.path;
      if (kDebugMode) {
        print("Picture saved to ${picture.path}");
      }
    } on camera_lib.CameraException catch (e) {
      if (kDebugMode) {
        print('Error occurred while taking picture: $e');
      }
      return;
    }
  }
}

import 'package:camera/camera.dart';
import 'package:camera_test/camera/camera_controller.dart';
import 'package:flutter/material.dart';

class CameraUi extends StatelessWidget {
  final CameraUiController cameraController;
  const CameraUi({super.key, required this.cameraController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: cameraController.uiState,
      builder: (context, value, child) {
        return Scaffold(
          body: Center(
            child: value.isInitialized
                ? CameraPreview(cameraController.controller)
                : ElevatedButton(
                    onPressed: () async {
                      await cameraController.initialize();
                    },
                    child: const Text("Initialize Camera"),
                  ),
          ),
        );
      },
    );
  }
}

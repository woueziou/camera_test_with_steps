import 'package:camera_test/camera/camera_controller.dart';
import 'package:camera_test/camera/camera_ui.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameraUicontroller = CameraUiController();
  cameraUicontroller.initialize();
  runApp(CameraUi(cameraController: cameraUicontroller));
}

import 'package:camera_test/camera/camera_controller.dart';
import 'package:camera_test/camera/camera_ui.dart';
import 'package:flutter/material.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameraUicontroller = CameraUiController();
    cameraUicontroller.initialize();
    runApp(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: CameraUi(uiController: cameraUicontroller),
      ),
    );

  // List<CameraDescription> cameras = [];
  // try {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   cameras = await availableCameras();
  // } on CameraException catch (e) {
  //   logError(e.code, e.description);
  // }
  // runApp(CameraApp(cameras: cameras));
}

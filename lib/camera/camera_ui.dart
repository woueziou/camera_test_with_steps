import 'package:camera/camera.dart';
import 'package:camera_test/camera/camera_controller.dart';
import 'package:flutter/material.dart';

class CameraUi extends StatelessWidget {
  final CameraUiController uiController;
  const CameraUi({super.key, required this.uiController});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: ValueListenableBuilder(
        valueListenable: uiController.uiState,
        builder: (context, state, child) {
          if (state.isInitializing) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!state.isInitialized) {
            return Center(
              child: ElevatedButton(
                onPressed: () async {
                  await uiController.initialize();
                },
                child: const Text("Initialize Camera"),
              ),
            );
          }
          if (state.isInitializing) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.isInitialized) {
            return Column(
              children: [
                Stack(
                  children: [
                    // ColoredBox(
                    //   color: Colors.white,
                    //   child: SizedBox(
                    //     height: MediaQuery.of(context).size.height * 0.8,
                    //     width: double.infinity,
                    //   ),
                    // ),
                    Builder(
                      builder: (context) {
                        if(state.isValidatingStep){
                          final step = uiController.steps[state.currenStep];
                          return Container(
                            height: size.height * 0.8,
                            width: double.infinity,
                            color: Colors.black,
                            child: state.currenStep < uiController.steps.length
                                ? Image.asset(
                                    uiController.stepImages[step.id]!,
                                    fit: BoxFit.contain,
                                  )
                                : const Center(
                                    child: Text(
                                      "No more steps",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                          );
                        }
                        return CameraPreview(uiController.controller,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return  SizedBox(height: size.height*.8,);
                              },
                            ));
                      }
                    ),
                    Positioned(
                      top: 50,
                      left: 0,
                      right: 0,
                      // bottom:
                      // right: 20,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Container(
                              width: size.width * 0.3,
                              height: size.width * 0.3,
                              decoration: BoxDecoration(
                                color: Colors.black.withAlpha(020),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Icon(
                                uiController.steps[state.currenStep].imagePath,
                                color: Colors.white,
                                size: size.width * 0.12,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                uiController
                                    .steps[state.currenStep]
                                    .description,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      if (state.isValidatingStep) {
                        return Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  uiController.redoStep();
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.refresh,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  uiController.validateStep(context: context);
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return GestureDetector(
                        onTap: () {
                          uiController.snapStepPicture();
                        },
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.blueGrey),
                          child: const Center(
                            child: Icon(
                              Icons.camera,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return const Center(child: Text("Unknown State"));
        },
      ),
    );
  }
}

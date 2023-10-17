import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/app_controller.dart';
import 'package:hawk_control_app/controllers/drone_controller.dart';
import 'package:hawk_control_app/views/components/drone_debug.dart';
import 'package:hawk_control_app/views/components/joystick_wrapper.dart';
import 'package:media_kit_video/media_kit_video.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final AppController appController = Get.find<AppController>();
    final DroneController droneController = Get.find<DroneController>();

    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.black,
          child: Center(
            child: Video(
              controller: droneController.streamingController,
              controls: NoVideoControls,
            ),
          ),
        ),
        Positioned(
            top: 16.0,
            right: 16.0,
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Toggle debug mode'),
                    onTap: () => appController
                        .setDebugMode(!appController.debugMode.value),
                  ),
                )
              ],
              tooltip: 'Settings',
              icon: const Icon(Icons.more_horiz),
            )),
        Positioned(
            left: 0.0,
            bottom: 100.0,
            right: 0.0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  JoystickWrapper(
                      onMove: (detail) =>
                          debugPrint('${detail.x} - ${detail.y}')),
                  JoystickWrapper(
                      onMove: (detail) =>
                          debugPrint('${detail.x} - ${detail.y}'))
                ])),
        Obx(
          () => Positioned(
              left: 16.0,
              top: size.height / 2,
              child: Visibility(
                visible: appController.debugMode.value,
                child: DroneDebug(droneController: droneController),
              )),
        ),
      ]),
    );
  }
}

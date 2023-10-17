import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/drone_controller.dart';

class DroneDebug extends StatelessWidget {
  const DroneDebug({
    super.key,
    required this.droneController,
  });

  final DroneController droneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Text(
              'Connected: ${droneController.drone.value.connected.toString()}'),
        ),
      ],
    );
  }
}

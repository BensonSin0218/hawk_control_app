import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';
import 'package:hawk_control_app/data/style_schemes.dart';

class JoystickWrapper extends StatelessWidget {
  const JoystickWrapper(
      {super.key, required this.onMove, this.mode = JoystickMode.all});

  final JoystickMode mode;
  final Function onMove;

  static const double areaRadius = 100.0;
  static const double controllerRadius = 25.0;

  @override
  Widget build(BuildContext context) {
    return Joystick(
      listener: (detail) => onMove(detail),
      base: Container(
          width: areaRadius * 2,
          height: areaRadius * 2,
          decoration: BoxDecoration(
              color: Colors.grey.shade700, shape: BoxShape.circle)),
      stick: Container(
        width: controllerRadius * 2,
        height: controllerRadius * 2,
        decoration: const BoxDecoration(
            color: ColorSchemes.primary, shape: BoxShape.circle),
      ),
      mode: mode,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/drone_controller.dart';
import 'package:hawk_control_app/data/styles.dart';
import 'package:hawk_control_app/data/translations/keys.dart';
import 'package:hawk_control_app/routes/app_pages.dart';
import 'package:hawk_control_app/utils/validations.dart';

class ConnectionPage extends StatelessWidget {
  const ConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    DroneController droneController = Get.put(DroneController());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                PageTranslationKeys.connectionPageTitle.tr,
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: TranslationKeys.ipAddress.tr,
                      ),
                      onChanged: (value) =>
                          droneController.ipAddress.value = value,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Obx(
                    () => ElevatedButton(
                      onPressed: droneController.ipAddress.value.isNotEmpty
                          ? () {
                              if (!isIPAddress(
                                  droneController.ipAddress.value)) {
                                Get.showSnackbar(GetSnackBar(
                                  title: ErrorTranslationKeys.error.tr,
                                  message:
                                      ErrorTranslationKeys.illegalIPAddress.tr,
                                  backgroundColor: Colors.red,
                                  duration: Durations.errorSnackBar,
                                  snackPosition: SnackPosition.TOP,
                                ));
                                return;
                              }

                              droneController.connectToDrone();
                              Get.toNamed(AppRoutes.control);
                            }
                          : null,
                      child: Text(
                        TranslationKeys.connect.tr,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/data/constants.dart';
import 'package:hawk_control_app/routes/app_pages.dart';
import 'package:hawk_control_app/utils/validations.dart';

class DroneController extends GetxController {
  RxString ipAddress = ''.obs;

  void connectToDrone() {
    developer.log(ipAddress.value, name: 'DroneController.connectToDrone()');

    if (!isIPAddress(ipAddress.value)) {
      Get.showSnackbar(GetSnackBar(
        title: ErrorTranslationKeys.error.tr,
        message: ErrorTranslationKeys.illegalIPAddress.tr,
        backgroundColor: Colors.red,
        duration: Durations.errorSnackBar,
        snackPosition: SnackPosition.TOP,
      ));
      return;
    }

    Get.toNamed(AppRoutes.control);
  }
}

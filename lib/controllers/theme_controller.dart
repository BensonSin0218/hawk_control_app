import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/data/constants.dart';

class ThemeController extends GetxController {
  GetStorage storage = GetStorage();

  RxBool isLightThemeMode = true.obs;

  @override
  void onInit() {
    super.onInit();

    if (storage.hasData(StorageKeys.isLightThemeMode)) {
      isLightThemeMode.value = storage.read(StorageKeys.isLightThemeMode);
    } else {
      isLightThemeMode.value = !Get.isDarkMode;
    }
  }

  void changeThemeMode() {
    Get.changeThemeMode(
        isLightThemeMode.value ? ThemeMode.dark : ThemeMode.light);

    isLightThemeMode.value = !isLightThemeMode.value;
    storage.write(StorageKeys.isLightThemeMode, isLightThemeMode.value);
  }
}

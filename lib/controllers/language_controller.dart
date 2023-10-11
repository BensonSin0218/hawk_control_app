import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/data/constants.dart';

class LanguageController extends GetxController {
  GetStorage storage = GetStorage();

  @override
  void onInit() {
    super.onInit();

    String languageCode = storage.hasData(StorageKeys.languageCode)
        ? storage.read(StorageKeys.languageCode)
        : "en";
    String countryCode = storage.hasData(StorageKeys.countryCode)
        ? storage.read(StorageKeys.countryCode)
        : "US";

    changeLanguage(languageCode, countryCode);
  }

  void changeLanguage(String languageCode, String countryCode) {
    Locale locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);

    storage.write(StorageKeys.languageCode, languageCode);
    storage.write(StorageKeys.countryCode, countryCode);
  }
}

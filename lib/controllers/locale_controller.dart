import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/data/constants.dart';
import 'package:hawk_control_app/data/enums/language.dart';

class LocaleController extends GetxController {
  GetStorage storage = GetStorage();

  late Locale locale;

  @override
  void onInit() {
    super.onInit();

    if (storage.hasData(StorageKeys.locale)) {
      locale = Locale(storage.read(StorageKeys.locale));
    } else {
      locale = Get.deviceLocale ?? Language.enUS.getLocale;
    }
  }

  void changeLanguage(Locale l) {
    Get.updateLocale(l);

    // Update
    locale = l;
    storage.write(StorageKeys.locale, l.toString());
  }
}

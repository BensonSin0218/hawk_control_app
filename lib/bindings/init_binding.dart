import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/locale_controller.dart';
import 'package:hawk_control_app/controllers/theme_controller.dart';
import 'package:hawk_control_app/controllers/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
    Get.lazyPut<ThemeController>(() => ThemeController());
    Get.lazyPut<LocaleController>(() => LocaleController());
  }
}

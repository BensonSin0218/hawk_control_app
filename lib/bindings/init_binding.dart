import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/language_controller.dart';
import 'package:hawk_control_app/controllers/user_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<LanguageController>(() => LanguageController());
  }
}

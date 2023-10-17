import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/data/constants.dart';

class AppController extends GetxController {
  GetStorage storage = GetStorage();

  RxBool hasReadIntroduction = false.obs;

  RxBool debugMode = true.obs;

  @override
  void onInit() {
    super.onInit();

    if (storage.hasData(StorageKeys.hasReadIntroduction)) {
      hasReadIntroduction.value = storage.read(StorageKeys.hasReadIntroduction);
    }

    if (storage.hasData(StorageKeys.debugMode)) {
      debugMode.value = storage.read(StorageKeys.debugMode);
    }
  }

  void setDebugMode(bool mode) {
    debugMode.value = mode;

    storage.write(StorageKeys.debugMode, debugMode.value);
  }
}

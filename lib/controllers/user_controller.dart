import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/data/constants.dart';

class UserController extends GetxController {
  GetStorage storage = GetStorage();

  RxBool hasReadIntroduction = false.obs;

  @override
  void onInit() {
    super.onInit();

    if (storage.hasData(StorageKeys.hasReadIntroduction)) {
      hasReadIntroduction.value = storage.read(StorageKeys.hasReadIntroduction);
    }
  }
}

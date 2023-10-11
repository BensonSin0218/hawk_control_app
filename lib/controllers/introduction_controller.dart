import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/data/constants.dart';
import 'package:hawk_control_app/routes/app_pages.dart';
import 'package:hawk_control_app/views/components/introduction_container.dart';

class IntroductionController extends GetxController {
  GetStorage storage = GetStorage();

  RxInt pageIndex = 0.obs;
  List<Widget> pages = [
    const IntroductionContainer(title: 'Introduction 1'),
    const IntroductionContainer(
      title: 'Introduction 2',
      description: "I am description 2",
    )
  ];
  PageController pageController = PageController();
  Curve pageCurve = Curves.fastEaseInToSlowEaseOut;

  void jumpToPage(index) => pageController.jumpToPage(index);

  void toPreviousPage() => pageController.previousPage(
      duration: Durations.pageViewer, curve: pageCurve);

  void toNextPage() {
    if (pageIndex.value == pages.length - 1) {
      Get.offAllNamed(AppRoutes.start);
      storage.write(StorageKeys.hasReadIntroduction, true);

      return;
    }

    pageController.nextPage(duration: Durations.pageViewer, curve: pageCurve);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/introduction_controller.dart';
import 'package:hawk_control_app/data/styles.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    IntroductionController introductionController =
        Get.put(IntroductionController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: introductionController.pageController,
            onPageChanged: introductionController.pageIndex,
            children: introductionController.pages,
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 24.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => ElevatedButton(
                    onPressed: introductionController.pageIndex.value > 0
                        ? introductionController.toPreviousPage
                        : null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            introductionController.pageIndex.value > 0
                                ? Colors.blue
                                : Colors.grey)),
                    child: Text(
                      "Back!",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    introductionController.pages.length,
                    (index) => Obx(
                      () => GestureDetector(
                        onTap: () => introductionController.jumpToPage(index),
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            color:
                                index == introductionController.pageIndex.value
                                    ? Colors.blue
                                    : Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: index == introductionController.pageIndex.value
                              ? 32.0
                              : 16.0,
                          height: 16.0,
                          margin: const EdgeInsets.all(4.0),
                          curve: Curves.fastEaseInToSlowEaseOut,
                          duration: Durations.animate,
                        ),
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => ElevatedButton(
                    onPressed: introductionController.toNextPage,
                    child: Text(
                      introductionController.pageIndex.value !=
                              introductionController.pages.length - 1
                          ? 'Next'
                          : 'Go!',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/data/constants.dart';
import 'package:hawk_control_app/routes/app_pages.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                PageTranslationKeys.startPageTitle.tr,
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () => Get.toNamed(AppRoutes.connection),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 3.0,
                        fixedSize: const Size(250.0, 50.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      child: Text(
                          PageTranslationKeys.startPageConnectToNewDrone.tr)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        disabledBackgroundColor: Colors.grey,
                        elevation: 3.0,
                        fixedSize: const Size(250.0, 50.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      child:
                          Text(PageTranslationKeys.startPageUseLastDrone.tr)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

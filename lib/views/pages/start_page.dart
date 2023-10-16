import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/data/translations/keys.dart';
import 'package:hawk_control_app/routes/app_pages.dart';
import 'package:hawk_control_app/views/components/app_drawer.dart';

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
                      foregroundColor: Colors.greenAccent,
                      backgroundColor: Colors.green,
                      fixedSize: const Size(250.0, 50.0),
                    ),
                    child: Text(
                      PageTranslationKeys.startPageConnectToNewDrone.tr,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      fixedSize: const Size(250.0, 50.0),
                    ),
                    child: Text(
                      PageTranslationKeys.startPageUseLastDrone.tr,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/theme_controller.dart';
import 'package:hawk_control_app/data/constants.dart';
import 'package:hawk_control_app/data/translations/keys.dart';
import 'package:hawk_control_app/routes/app_pages.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();

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
                      elevation: 3.0,
                      fixedSize: const Size(250.0, 50.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
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
                      disabledBackgroundColor: Colors.grey,
                      elevation: 3.0,
                      fixedSize: const Size(250.0, 50.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Text('${AppInformation.appName} - Drawer',
                    style: Theme.of(context).textTheme.headlineMedium)),
            Text('Theme', style: Theme.of(context).textTheme.headlineSmall),
            Obx(
              () => ListTile(
                  title: Text(
                    themeController.isLightThemeMode.value
                        ? 'Dark Theme'
                        : 'Light Theme',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  onTap: themeController.changeThemeMode),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/bindings/init_binding.dart';
import 'package:hawk_control_app/controllers/locale_controller.dart';
import 'package:hawk_control_app/controllers/theme_controller.dart';
import 'package:hawk_control_app/data/translations/messages.dart';
import 'package:hawk_control_app/data/styles.dart';
import 'package:hawk_control_app/routes/app_pages.dart';

class HawkControlApp extends StatelessWidget {
  const HawkControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    LocaleController localeController = Get.put(LocaleController());

    return GetMaterialApp(
      initialRoute: AppRoutes.splash,
      theme: ThemeScheme.light,
      darkTheme: ThemeScheme.dark,
      themeMode: themeController.isLightThemeMode.value
          ? ThemeMode.light
          : ThemeMode.dark,
      locale: localeController.locale,
      fallbackLocale: const Locale('en', 'US'),
      translations: Messages(),
      defaultTransition: Transition.rightToLeftWithFade,
      getPages: AppPages.routes,
      initialBinding: InitBinding(),
      unknownRoute: AppPages.notFound,
      debugShowCheckedModeBanner: false,
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /**
   * setPreferredOrientations seems only works on Android devices,
   * For Apple device, please set orientations in XCode
   */
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  await GetStorage.init();

  runApp(const HawkControlApp());
}

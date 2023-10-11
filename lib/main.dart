import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hawk_control_app/bindings/init_binding.dart';
import 'package:hawk_control_app/data/app_translations.dart';
import 'package:hawk_control_app/routes/app_pages.dart';

class HawkControlApp extends StatelessWidget {
  const HawkControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitBinding(),
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('zh', 'HK'),
      initialRoute: AppRoutes.splash,
      unknownRoute: AppPages.notFound,
      getPages: AppPages.routes,
      defaultTransition: Transition.rightToLeftWithFade,
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

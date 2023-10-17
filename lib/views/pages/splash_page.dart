import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/app_controller.dart';
import 'package:hawk_control_app/data/constants.dart';
import 'package:hawk_control_app/routes/app_pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final AppController userSettingController = Get.find<AppController>();

  @override
  void initState() {
    super.initState();

    // Timer: For delay to navigate to start page / introduction page
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(userSettingController.hasReadIntroduction.value
          ? AppRoutes.start
          : AppRoutes.introduction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          '${AppInformation.companyName} - ${AppInformation.appName}',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

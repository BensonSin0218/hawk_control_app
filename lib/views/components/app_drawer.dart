import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/controllers/locale_controller.dart';
import 'package:hawk_control_app/controllers/theme_controller.dart';
import 'package:hawk_control_app/data/class/language.dart';
import 'package:hawk_control_app/data/constants.dart';
import 'package:hawk_control_app/data/translations/keys.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    LocaleController localeController = Get.find<LocaleController>();

    return Drawer(
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
                      ? ThemeTranslationKeys.darkTheme.tr
                      : ThemeTranslationKeys.lightTheme.tr,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                onTap: themeController.changeThemeMode),
          ),
          const Divider(),
          Text(LocaleTranslationKeys.locale.tr,
              style: Theme.of(context).textTheme.headlineSmall),
          Column(
            children: List.generate(
              Language.values.length,
              (index) => ListTile(
                title: Text(
                  Language.values[index].getDisplayName,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                onTap: () => localeController
                    .changeLanguage(Language.values[index].getLocale),
              ),
            ),
          )
        ],
      ),
    );
  }
}

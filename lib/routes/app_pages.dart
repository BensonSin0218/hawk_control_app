import 'package:get/get.dart';
import 'package:hawk_control_app/views/pages/connection_page.dart';
import 'package:hawk_control_app/views/pages/control_page.dart';
import 'package:hawk_control_app/views/pages/introduction_page.dart';
import 'package:hawk_control_app/views/pages/not_found_page.dart';
import 'package:hawk_control_app/views/pages/splash_page.dart';
import 'package:hawk_control_app/views/pages/start_page.dart';

part 'app_routes.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
    ),
    GetPage(name: AppRoutes.introduction, page: () => const IntroductionPage()),
    GetPage(name: AppRoutes.start, page: () => const StartPage()),
    GetPage(name: AppRoutes.connection, page: () => const ConnectionPage()),
    GetPage(name: AppRoutes.control, page: () => const ControlPage())
  ];

  static final GetPage notFound =
      GetPage(name: AppRoutes.notFound, page: () => const NotFoundPage());
}

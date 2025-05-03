import 'package:get/get.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/home.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/welcome_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/HomePage', page: () => const HomePage()),
        GetPage(name: '/WelcomeScreen', page: () => const WelcomeScreen()),

  ];
}

import 'package:get/get.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/Addtobasket.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/Authentication.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/OrderComplete.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/OrderList.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/home.dart';
import 'package:mobile_ui_kit_ecommerce_community/view/pages/welcome_screen.dart';

import '../binding/Add_to_basket_binding.dart';
import '../binding/product_binding.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/HomePage', page: () => const HomePage(),binding: ProductBinding(),),
    GetPage(name: '/WelcomeScreen', page: () => const WelcomeScreen()),
    GetPage(name: '/AuthenticationPage', page: () => const AuthenticationPage()),
    GetPage(name: '/AddtobasketPage', page: () => const AddtobasketPage(),binding: AddToBasketBinding()),
    GetPage(name: '/OrderComplete', page: () => const OrderComplete()),
    GetPage(name: '/OrderList', page: () =>  OrderList()),
  ];
}

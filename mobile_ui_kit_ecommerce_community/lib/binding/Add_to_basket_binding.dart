import 'package:get/get.dart';

import '../controllers/Add_to_basket_controller.dart';




class AddToBasketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddToBasketController>(() => AddToBasketController());
  }
}

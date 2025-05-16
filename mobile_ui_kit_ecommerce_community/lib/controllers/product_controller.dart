import 'package:get/get.dart';

import '../data.dart';
import '../model/model.dart';

class ProductController extends GetxController {
  RxList<Product> products = <Product>[].obs;


  @override
  void onInit() {
    super.onInit();
    products.assignAll(productData);
  }


}

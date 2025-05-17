import 'package:get/get.dart';
import '../data.dart';
import '../model/model.dart';

class AddToBasketController extends GetxController {
  Rxn<Product> selectedProduct = Rxn<Product>();
  RxInt quantity = 1.obs;

  @override
  void onInit() {
    super.onInit();
    final idParam = Get.parameters['id'];
    final int id = int.tryParse(idParam ?? '') ?? -1;
    final product = productData.firstWhereOrNull((p) => p.id == id);
    selectedProduct.value = product;
  }

  double get totalPrice {
    final product = selectedProduct.value;
    if (product == null) return 0;
    return product.price * quantity.value;
  }

  void increaseQuantity() {
    quantity.value++;
  }

  void decreaseQuantity() {
    if (quantity.value > 1) quantity.value--;
  }
}

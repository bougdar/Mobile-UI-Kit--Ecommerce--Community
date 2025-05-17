import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../controllers/Add_to_basket_controller.dart';



class AddtobasketPage extends StatelessWidget {
  const AddtobasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AddToBasketController>();

    return Scaffold(
      body: Obx(() {
        final product = controller.selectedProduct.value;

        if (product == null) {
          return const Center(child: Text("Product not found"));
        }

        return Container(
          width: double.infinity,
          color: const Color(0xFFFFA451),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: _goBackButton(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Center(
                  child: Container(
                    width: 176.w,
                    height: 176.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                width: 375.w,
                height: 498.h,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.w),
                      topRight: Radius.circular(16.w),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 45.h),
                    Text(
                      '${product.name}',
                      style: TextStyle(
                        color: const Color(0xFF27214D),
                        fontSize: 32,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.32,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      children: [
                        _quantityButton(isAdd: false),
                        SizedBox(width: 24.w),
                        Obx(() {
                          return Text(
                            '${controller.quantity.value}',
                            style: TextStyle(
                              color: const Color(0xFF27214D),
                              fontSize: 24,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.24,
                            ),
                          );
                        }),
                        SizedBox(width: 24.w),
                        _quantityButton(isAdd: true),
                        Spacer(),
                        Obx(() {
                          final controller = Get.find<AddToBasketController>();
                          return Text(
                            '${controller.totalPrice.toStringAsFixed(2)} Dinar',
                            style: TextStyle(
                              color: const Color(0xFF27214D),
                              fontSize: 24,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.24,
                            ),
                          );
                        }),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Divider(color: const Color(0xFFF3F3F3), thickness: 1),
                    SizedBox(height: 25.h),
                    Text(
                      'One Pack Contains:',
                      style: TextStyle(
                        color: const Color(0xFF27214D),
                        fontSize: 20,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w500,
                        height: 1.6,
                        letterSpacing: -0.2,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                      style: TextStyle(
                        color: const Color(0xFF27214D),
                        fontSize: 16,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        letterSpacing: -0.16,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Divider(color: const Color(0xFFF3F3F3), thickness: 1),
                    SizedBox(height: 25.h),
                    Text(
                      'If you are looking for a new fruit salad to eat today...',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: -0.14,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFFF7F0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Center(
                            child: Icon(Icons.favorite,
                                color: Color(0xFFFFA451), size: 24),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                         onTap: () {
  final box = GetStorage();

  // Read basket or initialize empty list
  List<dynamic> basket = box.read('basket') ?? [];

  // Check if product already exists in basket
  int index = basket.indexWhere((item) => item['id'] == product.id);

  if (index == -1) {
    basket.add({
      'id': product.id,
      'name': product.name,
      'quantity': controller.quantity.value,
      'price': product.price,
      'image': product.image,
    });
  } else {
    basket[index]['quantity'] += controller.quantity.value;
  }

  // Save updated basket
  box.write('basket', basket);

  Get.snackbar('Success', '${product.name} added to basket');

  // Print basket content to console for debugging
  final basketContent = box.read('basket') ?? [];
  print('Basket content: $basketContent');
},

                          child: Container(
                            width: 219,
                            height: 56,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFFA451),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Add to basket',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Brandon Grotesque',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _quantityButton({required bool isAdd}) {
    final controller = Get.find<AddToBasketController>();
    return GestureDetector(
      onTap: () {
        isAdd ? controller.increaseQuantity() : controller.decreaseQuantity();
      },
      child: Container(
        width: 32.w,
        height: 32.h,
        decoration: ShapeDecoration(
          color: isAdd ? const Color(0xFFFFF2E6) : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: isAdd
                ? BorderSide.none
                : const BorderSide(width: 1, color: Color(0xFF333333)),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Center(
          child: Icon(
            isAdd ? Icons.add : Icons.remove,
            size: 16,
            color: const Color(0xFF333333),
          ),
        ),
      ),
    );
  }

  Widget _goBackButton() {
    return Container(
      width: 80.w,
      height: 32.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x19202020),
            blurRadius: 60.w,
            offset: Offset(0, 30),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 80.w,
              height: 32.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          Positioned(
            left: 8.w,
            top: 8.h,
            child: SvgPicture.asset(
              'assets/icons/Vectorback.svg',
              width: 16.w,
              height: 16.h,
            ),
          ),
          Positioned(
            left: 23.w,
            top: 6.h,
            child: Text(
              'Go back',
              style: TextStyle(
                color: const Color(0xFF27214D),
                fontSize: 16,
                fontFamily: 'Brandon Grotesque',
                fontWeight: FontWeight.w400,
                height: 1.31,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OrderList extends StatelessWidget {
  OrderList({super.key});
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    final List<dynamic> basket = box.read('basket') ?? [];

    return Scaffold(
      body: Container(
        color: const Color(0xFFFFA451),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 72.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Stack(
                children: [
                  // Centered title
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'My Basket',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w500,
                        height: 1.33,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  // "Go back" button aligned to the left
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 80.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19202020),
                            blurRadius: 60.w,
                            offset: Offset(0, 30.w),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/HomePage');
                        },
                        child: Stack(
                          children: [
                            // Background
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
                            // SVG Icon
                            Positioned(
                              left: 8.w,
                              top: 8.h,
                              child: SvgPicture.asset(
                                'assets/icons/Vectorback.svg',
                                width: 16.w,
                                height: 16.h,
                              ),
                            ),
                            // Text
                            Positioned(
                              left:
                                  23.w, // shifted right to leave room for icon
                              top: 6.h,
                              child: Text(
                                'Go back',
                                style: TextStyle(
                                  color: Color(0xFF27214D),
                                  fontSize: 16,
                                  fontFamily: 'Brandon Grotesque',
                                  fontWeight: FontWeight.w400,
                                  height: 1.31,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              width: 375.w,
              height: 677.h,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: 375.w,
                    height: 80.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 24.w,
                          top: 0,
                          child: Container(
                            width: 65.w,
                            height: 64.w,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFFFAEB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 105.w,
                          top: 9.h,
                          child: Text(
                            'Kaftaji',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.16,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 105.w,
                          top: 36.h,
                          child: Text(
                            '2packs',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.14,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 299.w,
                          top: 21.h,
                          child: Text(
                            '5,00',
                            style: TextStyle(
                              color: const Color(0xFF27214D),
                              fontSize: 16,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.16,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 80.h,
                          child: Container(
                            width: 375.w,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: const Color(0xFFF4F4F4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 37.w,
                          top: 12.h,
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 103.w,
                          height: 56.h,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0.w,
                                top: 24.h,
                                child: Text(
                                  '10,00',
                                  style: TextStyle(
                                    color: const Color(0xFF27214D),
                                    fontSize: 24,
                                    fontFamily: 'Brandon Grotesque',
                                    fontWeight: FontWeight.w500,
                                    height: 1.33,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Total',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Brandon Grotesque',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: -0.16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  width: 375.w,
                                  height: 406.h,
                                  padding: const EdgeInsets.all(16),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      ),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 16.h),
                                          width: 327.w,
                                          height: 101.h,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Text(
                                                  'Delivery address',
                                                  style: TextStyle(
                                                    color: Color(0xFF27214D),
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Brandon Grotesque',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -0.20,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 45.h,
                                                child: Container(
                                                  width: 327.w,
                                                  height: 56.h,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFF3F1F1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 24.w,
                                                top: 58.h,
                                                child: Text(
                                                  '10th avenue, Lekki, Lagos State',
                                                  style: TextStyle(
                                                    color: Color(0xFFC2BCBC),
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Brandon Grotesque',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -0.20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Contact number
                                        Container(
                                          width: 327.w,
                                          height: 101.h,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Text(
                                                  'Number we can call',
                                                  style: TextStyle(
                                                    color: Color(0xFF27214D),
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Brandon Grotesque',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -0.20,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 45.h,
                                                child: Container(
                                                  width: 327.w,
                                                  height: 56.h,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFF3F1F1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.w),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 24.w,
                                                top: 58.h,
                                                child: Text(
                                                  '09090605708',
                                                  style: TextStyle(
                                                    color: Color(0xFFC2BCBC),
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Brandon Grotesque',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -0.20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Pay on delivery
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed('/OrderComplete');
                                          },
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(bottom: 16.h),
                                            padding: const EdgeInsets.all(16),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Color(0xFFFFA451)),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Pay on delivery',
                                                  style: TextStyle(
                                                    color: Color(0xFFFFA451),
                                                    fontSize: 16,
                                                    fontFamily:
                                                        'Brandon Grotesque',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5,
                                                    letterSpacing: -0.16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: 199.w,
                            height: 56.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 199.w,
                                    height: 56.h,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFFA451),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 52.70.w,
                                  top: 14.h,
                                  child: SizedBox(
                                    width: 93.59.w,
                                    height: 28.h,
                                    child: Text(
                                      'Checkout',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Brandon Grotesque',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                        letterSpacing: -0.16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AddtobasketPage extends StatelessWidget {
  const AddtobasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xFFFFA451),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 64.h),

            // FIXED: Left-aligned badge
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: GestureDetector(
                              onTap: () {
                Get.back();},
                child: Container(
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
                      // Background shape
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
                
                      // SVG icon
                      Positioned(
                        left: 8.w,
                        top: 8.h,
                        child: SvgPicture.asset(
                          'assets/icons/Vectorback.svg',
                          width: 16.w,
                          height: 16.h,
                        ),
                      ),
                
                      // "Go back" text
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
                ),
              ),
            ),

            // Product Image
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Center(
                child: Container(
                  width: 176.w,
                  height: 176.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 32.h),

            // Bottom Container
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
                    'Quinoa Fruit Salad',
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

                  // Quantity & Price Row
                  Row(
                    children: [
                      // Minus Button
                      Container(
                        width: 32.w,
                        height: 32.h,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                width: 32.w,
                                height: 32.h,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1.w,
                                      color: const Color(0xFF333333),
                                    ),
                                    borderRadius: BorderRadius.circular(100.w),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 8.w,
                              top: 14.h,
                              child: Container(
                                width: 16.w,
                                height: 2.h,
                                color: const Color(0xFF333333),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 24.w),

                      // Quantity Text
                      Text(
                        '1',
                        style: TextStyle(
                          color: const Color(0xFF27214D),
                          fontSize: 24,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.24,
                        ),
                      ),

                      SizedBox(width: 24.w),

                      // Plus Button
                      Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFF2E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.w),
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 16.w,
                            color: Color(0xFFFF7300),
                          ),
                        ),
                      ),

                      Spacer(),

                      // Price
                      Container(
                        height: 34.h,
                        alignment: Alignment.centerRight,
                        child: Text(
                          '2,000 dinar',
                          style: TextStyle(
                            color: const Color(0xFF27214D),
                            fontSize: 24,
                            fontFamily: 'Brandon Grotesque',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
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

                  SizedBox(height: 15.h),

                  Divider(color: const Color(0xFFF3F3F3), thickness: 1),

                  SizedBox(height: 25.h),

                  Text(
                    'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
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

                  // Favorite + Add to Basket Row
                  Row(
                    children: [
                      // Favorite
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
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xFFFFA451),
                            size: 24,
                          ),
                        ),
                      ),

                      Spacer(),

                      // Add to Basket
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/OrderComplete');
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
      ),
    );
  }
}

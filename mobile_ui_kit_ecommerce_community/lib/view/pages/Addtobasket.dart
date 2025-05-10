import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddtobasketPage extends StatelessWidget {
  const AddtobasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xFFFFA451),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 106.h),
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
            SizedBox(
              height: 32.h,
            ),
            Container(
              width: 375.w,
              height: 498.h,
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
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
                  SizedBox(
                    height: 45.h,
                  ),
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
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.w),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 32.w,
                                  height: 32.h,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1.w,
                                        color: const Color(0xFF333333),
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.w),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8.w,
                                top: 17.33.h,
                                child: Container(
                                  width: 16.w,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 2.w,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: const Color(0xFF333333),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24.h,
                        ),
                        Text(
                          '1 ',
                          style: TextStyle(
                            color: const Color(0xFF27214D),
                            fontSize: 24,
                            fontFamily: 'Brandon Grotesque',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                        SizedBox(
                          width: 24.h,
                        ),
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
                              color: Color.fromARGB(255, 255, 115, 0),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 34.h,
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: 375.w,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: const Color(0xFFF3F3F3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    'One Pack Contains:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF27214D),
                      fontSize: 20,
                      fontFamily: 'Brandon Grotesque',
                      fontWeight: FontWeight.w500,
                      height: 1.60,
                      letterSpacing: -0.20,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    width: 326,
                    child: Text(
                      'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                      style: TextStyle(
                        color: const Color(0xFF27214D),
                        fontSize: 16,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                        letterSpacing: -0.16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 375.w,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: const Color(0xFFF3F3F3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    width: 284.w,
                    child: Text(
                      'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: -0.14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
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
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xFFFFA451), 
                            size: 24, 
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/OrderComplete');
                        },
                        child: Container(
                          width: 219,
                          height: 56,
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
                                  width: 219,
                                  height: 56,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFFA451),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 58,
                                top: 14,
                                child: SizedBox(
                                  width: 103,
                                  height: 28,
                                  child: Text(
                                    'Add to basket',
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

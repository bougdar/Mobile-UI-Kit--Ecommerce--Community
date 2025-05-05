import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 375.w,
              height: 469.h,
              color: const Color(0xFFFFA451),
              child: Stack(
                children: [
                  Positioned(
                    left: 35.w,
                    top: 155.h,
                    width: 301.w,
                    height: 260.h,
                    child: Image.asset(
                      "assets/images/imgbin-basket-of-fruit-cartoon-fruits-basket-still-life-illustration-zT8c0qVNxL2hbA3BBdz73AmJr-removebg-preview (1) 1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    left: 37.w,
                    top: 423.h,
                    width: 301.w,
                    height: 12.h,
                    child: Image.asset(
                      "assets/images/Ellipse 1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 56.h,),
            Container(
              width: 327.w,
              height: 199.h,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.w),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 1.w,
                    top: 0,
                    child: Text(
                      'Get The Freshest Fruit Salad Combo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF27214D),
                        fontSize: 20,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 37.h,
                    child: SizedBox(
                      width: 282.w,
                      child: Text(
                        'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                        style: TextStyle(
                          color: const Color(0xFF5C577E),
                          fontSize: 16,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w400,
                          height: 1.50.h,
                          letterSpacing: -0.16,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 143.h,
                    child: Container(
                      width: 327.w,
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
                    left: 118.w,
                    top: 157.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/AuthenticationPage');
                      },
                      child: SizedBox(
                        width: 90.w,
                        height: 28.h,
                        child: Text(
                          'Let’s Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Brandon Grotesque',
                            fontWeight: FontWeight.w500,
                            height: 1.50.h,
                            letterSpacing: -0.16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Center(
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
                        "assets/images/kisspng-fruit-basket-clip-art-5aed5301d44408 1.png",
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
              SizedBox(
                height: 56.h,
              ),
              Container(
                width: 327.w,
                height: 199.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/HomePage');
                  },
                  child: Stack(
                    children: [
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
                        child: SizedBox(
                          child: Text(
                            'Start Ordering',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w500,
                              height: 1.50.h,
                              letterSpacing: -0.16.w,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1.w,
                        top: 0,
                        child: Text(
                          'What is your firstname?',
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
                        top: 45.h,
                        child: SizedBox(
                          width: 327.w,
                          height: 56.h,
                          child: TextField(
                            cursorColor: const Color(0xFFFFA451),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF3F1F1),
                              hintText: 'Tony',
                              hintStyle: TextStyle(
                                color: Color(0xFFC2BCBC),
                                fontSize: 20.sp,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.20,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24.w, vertical: 16.h),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.w),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.w),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.w),
                                borderSide: BorderSide(
                                  color: const Color(0xFFFFA451),
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.20,
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
      ),
    );
  }
}

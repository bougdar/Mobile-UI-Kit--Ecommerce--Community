import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 160.h),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 247.w,
                height: 340.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Group 49.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFFFA451),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFFFFA451),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
                    'Track order',
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
                ],
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/HomePage');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0xFFFFA451),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Text(
                      'Continue shopping',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFFFA451),
                        fontSize: 16,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                        letterSpacing: -0.16,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

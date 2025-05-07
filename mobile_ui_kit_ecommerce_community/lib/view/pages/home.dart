import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 75.h,
          leading: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                'assets/icons/drawer.svg',
                width: 22.w,
                height: 11.h,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 41.w,
                height: 42.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 9.w,
                      top: 0,
                      child: Container(
                        width: 24.w,
                        height: 24.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 60,
                              offset: Offset(0, 30),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/Vector.svg',
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 27.h,
                      child: Text(
                        'My basket',
                        style: TextStyle(
                          color: Color(0xFF27214D),
                          fontSize: 10,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 58.h,
                  ),
                  Positioned(
                    left: 24.w,
                    child: SizedBox(
                      width: 257.w,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hello Tony, ',
                              style: TextStyle(
                                color: const Color(0xFF27214D),
                                fontSize: 20,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.20,
                              ),
                            ),
                            TextSpan(
                              text: 'What fruit salad combo do you want today?',
                              style: TextStyle(
                                color: const Color(0xFF27214D),
                                fontSize: 20,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                width: 330.w,
                height: 56.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 288.w,
                        height: 56.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3F4F9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 56.w,
                      top: 18.h,
                      child: Text(
                        'Search for fruit salad combos',
                        style: TextStyle(
                          color: const Color(0xFF86859E),
                          fontSize: 14,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24.w,
                      top: 20.h,
                      child: Container(
                        width: 16.w,
                        height: 16.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(children: [
                            SvgPicture.asset(
                              'assets/icons/Group.svg',
                              width: 20.w,
                              height: 20.h,
                            ),
                          ],),
                      ),
                    ),
                    Positioned(
                      left: 311.w,
                      top: 24.h,
                      child: Container(
                        width: 18.w,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2.w,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: const Color(0xFF070648),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 323.w,
                      top: 31.h,
                      child: Container(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(-3.14),
                        width: 18.w,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2.w,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: const Color(0xFF070648),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 304.w,
                      top: 19.h,
                      child: Container(
                        width: 8.w,
                        height: 8.h,
                        decoration: ShapeDecoration(
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF070648),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 330.w,
                      top: 36.h,
                      child: Container(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(-3.14),
                        width: 8.w,
                        height: 8.h,
                        decoration: ShapeDecoration(
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF070648),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
              Container(),
            ],
          ),
        ));
  }
}

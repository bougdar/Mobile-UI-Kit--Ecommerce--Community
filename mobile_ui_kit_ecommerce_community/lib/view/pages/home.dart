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
          color: Colors.white,
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
              SizedBox(
                height: 20.h,
              ),
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
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/Group.svg',
                              width: 20.w,
                              height: 20.h,
                            ),
                          ],
                        ),
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
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Recommended Combo',
                  textAlign: TextAlign.left,
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
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24.w),
                    width: 176.w,
                    height: 183.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 152.w,
                            height: 183.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.w),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 60,
                                  spreadRadius: 2,
                                  offset: Offset(0, 30),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16.w,
                          top: 110.h,
                          child: Text(
                            'Honey lime combo',
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
                          left: 17.w,
                          top: 143.h,
                          child: Text(
                            '2,000 Dinar',
                            style: TextStyle(
                              color: const Color(0xFFF08626),
                              fontSize: 14,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.14,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 112.w,
                          top: 141.h,
                          child: Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFFF2E6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 16,
                                color: Color(0xFFFFA451),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 36.w,
                          top: 22.h,
                          child: Container(
                            width: 80.w,
                            height: 80.h,
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
                  Container(
                    padding: EdgeInsets.only(left: 24.w),
                    width: 176.w,
                    height: 183.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 152.w,
                            height: 183.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.w),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 60,
                                  spreadRadius: 2,
                                  offset: Offset(0, 30),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16.w,
                          top: 110.h,
                          child: Text(
                            'Honey lime combo',
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
                          left: 17.w,
                          top: 143.h,
                          child: Text(
                            '2,000 Dinar',
                            style: TextStyle(
                              color: const Color(0xFFF08626),
                              fontSize: 14,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.14,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 112.w,
                          top: 141.h,
                          child: Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFFF2E6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 16,
                                color: Color(0xFFFFA451),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 36.w,
                          top: 22.h,
                          child: Container(
                            width: 80.w,
                            height: 80.h,
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
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 311.w,
                height: 34.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 103.w,
                      top: 5.h,
                      child: Text(
                        'Popular',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF928DB4),
                          fontSize: 16,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.16,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 183.w,
                      top: 5.h,
                      child: Text(
                        'New combo',
                        style: TextStyle(
                          color: const Color(0xFF928DB4),
                          fontSize: 16,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.16,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 289.w,
                      top: 5.h,
                      child: Text(
                        'Top',
                        style: TextStyle(
                          color: const Color(0xFF928DB4),
                          fontSize: 16,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.16,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Hottest',
                        style: TextStyle(
                          color: const Color(0xFF27214D),
                          fontSize: 24,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 2.w,
                      top: 34.h,
                      child: Container(
                        width: 22,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: const Color(0xFFFFA451),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 24.w),
                      width: 176.w,
                      height: 183.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 152.w,
                              height: 183.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF9EA),
                                borderRadius: BorderRadius.circular(16.w),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            top: 110.h,
                            child: Text(
                              'Honey lime combo',
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
                            left: 17.w,
                            top: 143.h,
                            child: Text(
                              '2,000 Dinar',
                              style: TextStyle(
                                color: const Color(0xFFF08626),
                                fontSize: 14,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 112.w,
                            top: 141.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFF2E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: Color(0xFFFFA451),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36.w,
                            top: 22.h,
                            child: Container(
                              width: 80.w,
                              height: 80.h,
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
                    Container(
                      padding: EdgeInsets.only(left: 24.w),
                      width: 176.w,
                      height: 183.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 152.w,
                              height: 183.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1EFF6),
                                borderRadius: BorderRadius.circular(16.w),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            top: 110.h,
                            child: Text(
                              'Honey lime combo',
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
                            left: 17.w,
                            top: 143.h,
                            child: Text(
                              '2,000 Dinar',
                              style: TextStyle(
                                color: const Color(0xFFF08626),
                                fontSize: 14,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 112.w,
                            top: 141.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFF2E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: const Color(0xFFF1EFF6),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36.w,
                            top: 22.h,
                            child: Container(
                              width: 80.w,
                              height: 80.h,
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
                    Container(
                      padding: EdgeInsets.only(left: 24.w),
                      width: 176.w,
                      height: 183.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 152.w,
                              height: 183.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF9EA),
                                borderRadius: BorderRadius.circular(16.w),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            top: 110.h,
                            child: Text(
                              'Honey lime combo',
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
                            left: 17.w,
                            top: 143.h,
                            child: Text(
                              '2,000 Dinar',
                              style: TextStyle(
                                color: const Color(0xFFF08626),
                                fontSize: 14,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 112.w,
                            top: 141.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFF2E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: Color(0xFFFFA451),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36.w,
                            top: 22.h,
                            child: Container(
                              width: 80.w,
                              height: 80.h,
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
                    Container(
                      padding: EdgeInsets.only(left: 24.w),
                      width: 176.w,
                      height: 183.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 152.w,
                              height: 183.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF9EA),
                                borderRadius: BorderRadius.circular(16.w),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            top: 110.h,
                            child: Text(
                              'Honey lime combo',
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
                            left: 17.w,
                            top: 143.h,
                            child: Text(
                              '2,000 Dinar',
                              style: TextStyle(
                                color: const Color(0xFFF08626),
                                fontSize: 14,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 112.w,
                            top: 141.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFF2E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: const Color(0xFFF1EFF6),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36.w,
                            top: 22.h,
                            child: Container(
                              width: 80.w,
                              height: 80.h,
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
                    Container(
                      padding: EdgeInsets.only(left: 24.w),
                      width: 176.w,
                      height: 183.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 152.w,
                              height: 183.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF9EA),
                                borderRadius: BorderRadius.circular(16.w),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            top: 110.h,
                            child: Text(
                              'Honey lime combo',
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
                            left: 17.w,
                            top: 143.h,
                            child: Text(
                              '2,000 Dinar',
                              style: TextStyle(
                                color: const Color(0xFFF08626),
                                fontSize: 14,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 112.w,
                            top: 141.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFF2E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: Color(0xFFFFA451),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36.w,
                            top: 22.h,
                            child: Container(
                              width: 80.w,
                              height: 80.h,
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
                    Container(
                      padding: EdgeInsets.only(left: 24.w),
                      width: 176.w,
                      height: 183.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 152.w,
                              height: 183.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF9EA),
                                borderRadius: BorderRadius.circular(16.w),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            top: 110.h,
                            child: Text(
                              'Honey lime combo',
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
                            left: 17.w,
                            top: 143.h,
                            child: Text(
                              '2,000 Dinar',
                              style: TextStyle(
                                color: const Color(0xFFF08626),
                                fontSize: 14,
                                fontFamily: 'Brandon Grotesque',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 112.w,
                            top: 141.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFF2E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color:
                                      const Color.fromARGB(255, 203, 183, 252),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36.w,
                            top: 22.h,
                            child: Container(
                              width: 80.w,
                              height: 80.h,
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
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

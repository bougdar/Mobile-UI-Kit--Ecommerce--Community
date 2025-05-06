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
      body: Center(
        child: Text("home page"),
      ),
    );
  }
}

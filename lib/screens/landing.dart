import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:givers_health/language_file.dart';
import 'package:givers_health/screens/signin.dart';

import '../colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [gradientBlue, gradientRed])),
        child: Column(
          children: [
            SizedBox(
              height: 134.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Text(
                LanguageFile.function1()['welcome to givers health'].toString(),
                style: TextStyle(
                    fontSize: 48.sp,
                    color: Colors.white,
                    letterSpacing: 0.3.sp),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 87.h,
              width: 326.w,
              margin: EdgeInsets.only(right: 24.w, left: 24.w),
              child: Text(
                LanguageFile.function1()['find'].toString(),
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.white70, letterSpacing: 0.3.sp,
                  // shadows: <Shadow>[
                  //   Shadow(
                  //     // offset: Offset(10.0, 10.0),
                  //     offset: Offset(0, 2),
                  //     blurRadius: 3.0,
                  //     color: Color(0xff05182a),
                  //   ),
                  // ],
                ),
              ),
            ),
            SizedBox(
              height: 293.h,
            ),
            Container(
              width: 375.w,
              height: 168.h,
              margin: EdgeInsets.only(right: 24.w, left: 24.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: 326.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Color(0xff007a7c),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          // "CREATE ACCOUNT"
                          LanguageFile.function1()['create account'].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              letterSpacing: 1.8.sp),
                        )),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: 326.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff007a7c),
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Get.to(SignInPage());
                        },
                        child: Text(
                          // "SIGN IN"
                          LanguageFile.function1()['sign in'].toString(),
                          style: TextStyle(
                              color: Color(0xff007a7c),
                              fontSize: 18.sp,
                              letterSpacing: 1.8.sp),
                        )),
                  ),
                  SizedBox(
                    height: 36.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

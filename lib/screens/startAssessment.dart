import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:givers_health/screens/forms/formQ1.dart';
import '../colors.dart';
import 'forms/formLanding.dart';

class StartAssessment extends StatefulWidget {
  const StartAssessment({Key? key}) : super(key: key);

  @override
  _StartAssessmentState createState() => _StartAssessmentState();
}

class _StartAssessmentState extends State<StartAssessment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new SingleChildScrollView(
      child: Container(
        // height: 812.h,
        // width: 375.w,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [gradientBlue, gradientRed])),
        child: Container(
          margin: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            children: [
              SizedBox(
                height: 134.h,
              ),
              Container(
                width: 327.w,
                height: 114.h,
                child: Text(
                  "Help us, help you.",
                  style: TextStyle(
                      fontSize: 48.sp,
                      letterSpacing: 0.3.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 145.h,
                width: 326.w,
                child: Text(
                  "Fill out a short assessment about where you are in your caregiving journey. This assessment helps us to create better recommendations and match you with others.",
                  style: (TextStyle(
                      fontSize: 24.sp,
                      letterSpacing: -0.3.sp,
                      color: Colors.white70)),
                ),
              ),
              SizedBox(
                height: 251.h,
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
                          onPressed: () {
                            Get.to(FormLanding());
                          },
                          child: Text(
                            "START ASSESSMENT",
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

                          },
                          child: Text(
                            "I'LL DO THIS LATER",
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
      ),
    ));
  }
}

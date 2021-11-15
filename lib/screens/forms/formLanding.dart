import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../colors.dart';
import 'formQ1.dart';

class FormLanding extends StatefulWidget {
  const FormLanding({Key? key}) : super(key: key);

  @override
  _FormLandingState createState() => _FormLandingState();
}

class _FormLandingState extends State<FormLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: formLandingColor1,
          width: 375.w,
          child: Container(
            margin: EdgeInsets.only(right: 24.w, left: 24.w),
            child: Column(
              children: [
                SizedBox(
                  height: 95.h,
                ),
                Container(
                  child: Text(
                    "Let’s get some information about the person you care for.",
                    style: TextStyle(fontSize: 36.sp, color: formLandingColor2),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 16.w, right: 16.w, top: 16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "You will need:",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: siginPageTextColor2,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "Medicaid and Medicare Status",
                                    style: TextStyle(
                                        color: formLandingColor2,
                                        fontSize: 20.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "Diagnoses",
                                    style: TextStyle(
                                        color: formLandingColor2,
                                        fontSize: 20.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "Your Zip Code",
                                    style: TextStyle(
                                        color: formLandingColor2,
                                        fontSize: 20.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "Your Loved One’s Zip Code",
                                    style: TextStyle(
                                        color: formLandingColor2,
                                        fontSize: 20.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 230.w,
                                    child: Card(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.help,
                                            size: 15,
                                            color: formLandingColor3,
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            "What if I don’t have these?",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: formLandingColor3),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 250.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: formLandingColor4,
                        // borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.close,
                              color: siginPageTextColor2,
                            )),
                      ),
                    ),
                    Container(
                      width: 250.w,
                      decoration: BoxDecoration(
                        color: formLandingColor5,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      height: 50.h,
                      child: TextButton(
                          onPressed: () {
                            Get.to(FormQ1());
                          },
                          child: Text(
                            "START",
                            style: TextStyle(
                                fontSize: 18.sp,
                                letterSpacing: 1.8.sp,
                                color: Colors.white),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 39.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

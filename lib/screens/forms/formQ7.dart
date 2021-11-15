import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';

class FormQ7 extends StatefulWidget {
  const FormQ7({Key? key}) : super(key: key);

  @override
  _FormQ7State createState() => _FormQ7State();
}

class _FormQ7State extends State<FormQ7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: 375.w,
            color: formLandingColor1,
            child: Container(
              margin: EdgeInsets.only(right: 24.w, left: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 203.h,
                  ),
                  Text(
                    "Success!",
                    style: TextStyle(
                        fontSize: 36.sp,
                        fontFamily: "bold",
                        color: formLandingColor2),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.w),
                    child: Text(
                      "Thanks for telling us more about you and your loved one.",
                      style: TextStyle(
                          fontSize: 36.sp,
                          fontFamily: "Medium",
                          color: formLandingColor2),
                    ),
                  ),
                  SizedBox(
                    height: 376.h,
                  ),
                  Container(
                    width: 327.w,
                    decoration: BoxDecoration(
                      color: formLandingColor5,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    height: 50.h,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "START",
                          style: TextStyle(
                              fontFamily: "DemiBold",
                              fontSize: 18.sp,
                              letterSpacing: 1.8.sp,
                              color: Colors.white),
                        )),
                  ),
                  SizedBox(height: 39.h,)
                ],
              ),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:givers_health/screens/forms/formQ3.dart';

import '../../colors.dart';

class FormQ2 extends StatefulWidget {
  const FormQ2({Key? key}) : super(key: key);

  @override
  _FormQ2State createState() => _FormQ2State();
}

class _FormQ2State extends State<FormQ2> {
  int _selectedIndex = -1;
  List<String> answerList = [
    "Yes, Medicare",
    "Yes, Medicare Advantage",
    "Yes, Medicare Advantage",
    "I don’t know"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 375.w,
          color: formLandingColor1,
          child: Column(
            children: [
              Container(
                height: 600.h,
                margin: EdgeInsets.only(right: 24.w, left: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 92.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 34.h,
                          width: 34.w,
                          color: formLandingColor4,
                          child: Center(
                              child: Text(
                            "2",
                            style: TextStyle(
                                color: siginPageTextColor2,
                                fontSize: 24.sp,
                                fontFamily: "DemiBold"),
                          )),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Container(
                          width: 281.w,
                          child: Text(
                            "Does your loved one have Medicare or Medicare Advantage?",
                            style: TextStyle(
                              fontFamily: "DemiBold",
                              color: formLandingColor2,
                              fontSize: 24.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 48.h,
                    ),
                    Text(
                      "Select one(1) option",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "Regular",
                          color: siginPageTextColor11),
                    ),
                    Expanded(
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return AnimatedContainer(
                                margin: EdgeInsets.only(bottom: 12.h),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: formLandingColor4),
                                    color: _selectedIndex == index
                                        ? Colors.blue
                                        : Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                duration: Duration(milliseconds: 300),
                                child: ListTile(
                                  title: Container(
                                      height: 60.h,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            answerList[index],
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Medium"),
                                          )
                                        ],
                                      )),
                                  onTap: () => setState(() {
                                    _selectedIndex = index;
                                    print(_selectedIndex.toString());
                                  }),
                                ),
                              );
                            })),
                  ],
                ),
              ),
              SizedBox(
                height: 277.h,
              ),
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 5.h,
                    color: formLandingColor5,
                  ),
                  Container(
                    width: 325.w,
                    height: 5.h,
                    color: formLandingColor4,
                  ),
                ],
              ),
              SizedBox(
                height: 29.h,
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
                    width: 130.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: formLandingColor5, width: 2.w),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    height: 50.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: formLandingColor5,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Back",
                          style: TextStyle(
                              fontFamily: "DemiBold",
                              fontSize: 18.sp,
                              letterSpacing: 1.8.sp,
                              color: formLandingColor5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(FormQ3());
                    },
                    child: Container(
                      width: 130.w,
                      decoration: BoxDecoration(
                        color: formLandingColor5,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                                fontFamily: "DemiBold",
                                fontSize: 18.sp,
                                letterSpacing: 1.8.sp,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
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
    );
  }
}

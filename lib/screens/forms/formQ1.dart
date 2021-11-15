import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:givers_health/screens/forms/formQ2.dart';

import '../../colors.dart';

class FormQ1 extends StatefulWidget {
  const FormQ1({Key? key}) : super(key: key);

  @override
  _FormQ1State createState() => _FormQ1State();
}

class _FormQ1State extends State<FormQ1> {
  int _selectedIndex = -1;
  List<String> answerList = ["Yes", "No", "I don't know"];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 375.w,
          color: formLandingColor1,
          child: Column(
            children: [
              Container(
                height: 500.h,
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
                            "1",
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
                            "Is the person you're caring for covered by Medicaid?",
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
                            itemCount: 3,
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
                    width: 15.w,
                    height: 5.h,
                    color: formLandingColor5,
                  ),
                  Container(
                    width: 360.w,
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
                  InkWell(onTap: (){
                    Get.to(FormQ2());
                  },
                    child: Container(
                      width: 250.w,
                      decoration: BoxDecoration(
                        color: formLandingColor5,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // TextButton(
                          //     onPressed: () {
                          //       Get.to(FormQ2());
                          //     },
                          //     child: Text(
                          //       "Next",
                          //       style: TextStyle(
                          //           fontFamily: "DemiBold",
                          //           fontSize: 18.sp,
                          //           letterSpacing: 1.8.sp,
                          //           color: Colors.white),
                          //     )),
                          Text(
                            "Next",
                            style: TextStyle(
                                fontFamily: "DemiBold",
                                fontSize: 18.sp,
                                letterSpacing: 1.8.sp,
                                color: Colors.white),
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

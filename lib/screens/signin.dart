

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:givers_health/apiFile.dart';

import 'package:givers_health/screens/startAssessment.dart';


import '../colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;

  // Future<String> apiLogin() async {
  //   print("button pressed");
  //   print(email + password);
  //   var response = await http.post(
  //       Uri.parse("https://api.phyzio.co/users/login_user/"),
  //       body: ({
  //         "username": email,
  //         "password": password,
  //         "device_channelid": 3.toString()
  //       }));
  //   if (response.statusCode == 200) {
  //     var decoded = jsonDecode(response.body);
  //     print("result show    ");
  //     // print("result show    " + decoded["response"]);
  //     // print("result show    " + decoded["user_data"]["first_name"]);
  //     print("result show   " + decoded.toString());
  //     Get.to(StartAssessment());
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text(decoded["response"]),
  //     ));
  //
  //     // Welcome album = new Welcome.fromJson(decoded);
  //     // AutoGenerate album = new AutoGenerate.fromJson(decoded);
  //
  //     //
  //
  //   } else {
  //     print("login failed");
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  //
  //   return "abc";
  // }

  //  Future<String>  apiLogin() async {
  //    print("button pressed");
  //    print(email + password);
  //    var response = await http.post(
  //        Uri.parse("https://reqres.in/api/login"),
  //        body: ({
  //          "email": email,
  //          "password": password,
  //        }));
  //    if (response.statusCode == 200) {
  //      var decoded = jsonDecode(response.body);
  //      print("result show    ");
  //      print("result show    " + decoded["token"]);
  //      // print("result show    " + decoded["user_data"]["first_name"]);
  //      Get.to(StartAssessment());
  //      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //        content: Text(decoded["response"]),
  //      ));
  //
  //      // Welcome album = new Welcome.fromJson(decoded);
  //      // AutoGenerate album = new AutoGenerate.fromJson(decoded);
  //
  //      //
  //
  //    } else {
  //      print("login failed");
  //      print('Request failed with status: ${response.statusCode}.');
  //    }
  //
  //    return "abc";
  //  }

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
              width: 327.w,
              height: 57.h,
              margin: EdgeInsets.only(right: 24.w, left: 24.w),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 48.sp,
                    color: Colors.white,
                    letterSpacing: 0.3.sp),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      width: 327.w,
                      decoration: BoxDecoration(
                        color: siginPageTextColor4,
                        border: Border.all(
                          color: Color(0xff007a7c),
                          width: 3.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 24.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 13.h,
                            ),
                            Container(
                              height: 12.h,
                              child: Row(
                                children: [
                                  Text(
                                    "Your Email",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: siginPageTextColor1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: siginPageTextColor3,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 20.h,
                              child: TextFormField(
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(42),
                                ],
                                onChanged: (text) {
                                  if (_formKey.currentState!.validate()) {
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.

                                  }
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter email';
                                  } else {
                                    email = value.toString().trim();
                                  }
                                  return null;
                                },
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hoverColor: Colors.black
                                    // border: OutlineInputBorder(
                                    //   borderSide: BorderSide.none,
                                    // ),
                                    ),
                                style: TextStyle(
                                    color: siginPageTextColor2,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 13.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Container(
                      width: 327.w,
                      decoration: BoxDecoration(
                        color: siginPageTextColor4,
                        border: Border.all(
                          color: Color(0xff007a7c),
                          width: 3.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 24.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 13.h,
                            ),
                            Container(
                              height: 12.h,
                              child: Row(
                                children: [
                                  Text(
                                    "Your Password",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: siginPageTextColor1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: siginPageTextColor3,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 20.h,
                              child: TextFormField(
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(29),
                                ],
                                onChanged: (text) {
                                  if (_formKey.currentState!.validate()) {
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.

                                    password = text.trim();
                                  }
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter password';
                                  } else {
                                    password = value.toString().trim();
                                  }
                                  return null;
                                },
                                obscureText: true,
                                enableSuggestions: false,
                                autocorrect: false,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hoverColor: Colors.black
                                    // border: OutlineInputBorder(
                                    //   borderSide: BorderSide.none,
                                    // ),
                                    ),
                                style: TextStyle(
                                    color: siginPageTextColor2,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 13.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 316.h,
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
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.

                            ApiFile.apiLogin(email, password);

                            Get.to(StartAssessment());
                          }
                        },
                        child: Text(
                          "SIGN IN",
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
                        onPressed: () {},
                        child: Text(
                          "BACK",
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

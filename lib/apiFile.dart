import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:givers_health/screens/startAssessment.dart';

class ApiFile {
  static String loginApiUrl = "https://api.phyzio.co/users/login_user/";

  static void add(String a) {
    print(a);
  }

static  Future<String> apiLogin(
       String email,  String password) async {
    print("button pressed");
    print(email + password);
    var response = await http.post(Uri.parse(loginApiUrl),
        body: ({
          "username": email,
          "password": password,
          "device_channelid": 3.toString()
        }));
    if (response.statusCode == 200) {
      var decoded = jsonDecode(response.body);
      print("result show    ");
      // print("result show    " + decoded["response"]);
      // print("result show    " + decoded["user_data"]["first_name"]);
      print("result show   " + decoded.toString());
      Get.to(StartAssessment());

      // Welcome album = new Welcome.fromJson(decoded);
      // AutoGenerate album = new AutoGenerate.fromJson(decoded);

      //

    } else {
      print("login failed");
      print('Request failed with status: ${response.statusCode}.');
    }

    return "abc";
  }
}

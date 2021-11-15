import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:givers_health/language_file.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'landing.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  Future<void> method1() async {
    try {
      1 / 0;
      aMethodThatMightFail();
    } catch (exception, stackTrace) {
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          TextButton(
              onPressed: () {
                LanguageFile.selectedLanguage = "english";
                Get.to(LandingPage());
                method1();
              },
              child: Text("English")),
          TextButton(
              onPressed: () {
                LanguageFile.selectedLanguage = "hindi";
                Get.to(LandingPage());
                method1();
              },
              child: Text("हिंदी"))
        ],
      ),
    );
  }

  void aMethodThatMightFail() {
    throw Exception("This is a crash!");
  }
}

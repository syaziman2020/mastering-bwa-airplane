import 'package:flutter/material.dart';
import 'package:mastering_airplane_bwa/ui/pages/bonus_card_page.dart';
import 'package:mastering_airplane_bwa/ui/pages/get_started_page.dart';
import 'package:mastering_airplane_bwa/ui/pages/main_page.dart';
import 'package:mastering_airplane_bwa/ui/pages/sign_up_page.dart';
import 'package:mastering_airplane_bwa/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashPage(),
        "/get-started": (context) => GetStartedPage(),
        "/sign-up": (context) => SignUpPage(),
        "/bonus-page": (context) => BonusPage(),
        "/main": (context) => MainPage(),
      },
    );
  }
}

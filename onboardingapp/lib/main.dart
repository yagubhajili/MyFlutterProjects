import 'package:flutter/material.dart';
import 'package:onboardingapp/pages/home_page.dart';
import 'package:onboardingapp/pages/login_page.dart';
import 'package:onboardingapp/pages/onboarding_page.dart';
import 'package:onboardingapp/pages/profile_page.dart';
import 'package:onboardingapp/pages/edit_profile.dart';

void main() {
  runApp(OnBoardingApp());
}

class OnBoardingApp extends StatelessWidget {
  const OnBoardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboardingpage(),
      routes: {
        '/homepage': (context) => Homepage(),
        '/loginpage': (context) => LoginPage(),
        '/profilepage': (context) => Profilepage(),
        '/editprofile': (context) => Editprofile(),
      },
    );
  }
}

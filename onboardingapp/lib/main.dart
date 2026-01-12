import 'package:flutter/material.dart';
import 'package:onboardingapp/pages/HomePage.dart';
import 'package:onboardingapp/pages/OnboardingPage.dart';

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
      routes: {'/homepage': (context) => Homepage()},
    );
  }
}

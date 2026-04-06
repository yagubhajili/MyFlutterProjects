import 'package:bank_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: OnboardingPage());
  }
}

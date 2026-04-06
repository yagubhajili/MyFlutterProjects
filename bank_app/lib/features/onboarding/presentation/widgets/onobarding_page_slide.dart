import 'package:bank_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class OnboardingPageSlide extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  const OnboardingPageSlide({
    super.key,
    this.imagePath = 'assets/images/onboarding1.png',
    this.title = 'Set your financial goals',
    this.description =
        'Your goals will help us to formulate right recommendations for success',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Image.asset(imagePath, height: 300),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

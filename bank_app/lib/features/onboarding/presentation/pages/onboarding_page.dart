import 'package:bank_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Text('Skip'), SizedBox(width: 15)]),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: PageView(
              children: [
                OnboardingPageSlide(),
                OnboardingPageSlide(
                  imagePath: 'assets/images/onboarding2.png',
                  title: 'Track your spending',
                  description:
                      'Monitor your expenses and make informed financial decisions',
                ),
                OnboardingPageSlide(
                  imagePath: 'assets/images/onboarding3.png',
                  title: 'Achieve your goals',
                  description:
                      'Stay on track and reach your financial milestones with ease',
                ),
              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      OnboardingIndicator(),
                      SizedBox(width: 5),
                      OnboardingIndicator(),

                      SizedBox(width: 5),
                      OnboardingIndicator(),
                    ],
                  ),
                  IconButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.surface,
                      ),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      shape: WidgetStatePropertyAll(CircleBorder()),
                      fixedSize: WidgetStatePropertyAll(Size(50, 50)),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: AppColors.indicatorInactive,
        shape: BoxShape.circle,
      ),
    );
  }
}

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

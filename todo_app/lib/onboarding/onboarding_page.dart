import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(
            horizontal: 24,
            vertical: 14,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'SKIP',
                  // textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.44)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: PageView(
                  children: [
                    NavigationPngs(png: 'assets/pngs/first_onboarding.png'),
                    NavigationPngs(png: 'assets/pngs/second_onboarding.png'),
                    NavigationPngs(png: 'assets/pngs/third_onboarding.png'),
                  ],
                ),
              ),

              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavigationIndicator(),
                  SizedBox(width: 8),
                  NavigationIndicator(),
                  SizedBox(width: 8),

                  NavigationIndicator(),
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  Text(
                    'Manage your tasks',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 42),
                  Text(
                    'You can easily manage all of your daily tasks in DoMe for free',

                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.87),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationPngs extends StatelessWidget {
  final String? png;
  const NavigationPngs({super.key, this.png});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          '$png',
          // width: 213,
          height: 278,
        ),
      ],
    );
  }
}

class NavigationIndicator extends StatelessWidget {
  const NavigationIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 27,
      decoration: BoxDecoration(
        color: Color(0xffAFAFAF),
        borderRadius: BorderRadius.circular(56),
      ),
    );
  }
}

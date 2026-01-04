import 'package:flutter/material.dart';

void main() {
  runApp(OnBoardingApp());
}

class OnBoardingApp extends StatelessWidget {
  const OnBoardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color(0xFF24A19C),
        body: Container(
          color: Color(0xFF24A19C),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Expanded(
                    child: PageView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.asset(
                              'assets/widgets/splashLogo.png',
                              width: 100,
                              height: 108,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'TodyApp',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),

                            Text(
                              'The best to do list application for you',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        // Spacer(),
                        // SizedBox(height: 84),
                        // Expanded(child: SizedBox()),
                        
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OnboardingIndicator(width: 24),
                      SizedBox(width: 6),
                      OnboardingIndicator(),
                      SizedBox(width: 6),
                      OnboardingIndicator(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingIndicator extends StatelessWidget {
  final double width;
  const OnboardingIndicator({super.key, this.width = 8});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
    );
  }
}

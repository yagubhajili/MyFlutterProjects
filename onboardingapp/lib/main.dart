import 'package:flutter/material.dart';

void main() {
  runApp(OnBoardingApp());
}

class OnBoardingApp extends StatefulWidget {
  const OnBoardingApp({super.key});

  @override
  State<OnBoardingApp> createState() => _OnBoardingAppState();
}

class _OnBoardingAppState extends State<OnBoardingApp> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color(0xFF24A19C),
        body: Container(
          color: currentPage == 0 ? Color(0xFF24A19C) : Colors.white,
          child: SafeArea(
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
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
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'skip',
                                    style: TextStyle(
                                      color: Color(0xFF24A19C),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'Third page',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
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
                      OnboardingIndicator(
                        width: currentPage == 0 ? 24 : 8,

                        color: currentPage == 0
                            ? Colors.white
                            : Color(0xFF24A19C),
                      ),
                      SizedBox(width: 6),
                      OnboardingIndicator(
                        width: currentPage == 1 ? 24 : 8,

                        color: currentPage == 0
                            ? Colors.white
                            : Color(0xFF24A19C),
                      ),
                      SizedBox(width: 6),
                      OnboardingIndicator(
                        width: currentPage == 2 ? 24 : 8,

                        color: currentPage == 0
                            ? Colors.white
                            : Color(0xFF24A19C),
                      ),
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
  final Color color;
  final double width;
  const OnboardingIndicator({
    super.key,
    this.color = Colors.white,
    this.width = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
    );
  }
}

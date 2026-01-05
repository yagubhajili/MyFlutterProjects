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
                      // physics: NeverScrollableScrollPhysics(),
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
                        BoardingPages(
                          image: 'assets/pictures/onboardingImage1.png',
                          title: 'Your convenience in \n making a todo list',
                          description:
                              "Here's a mobile platform that helps you create task or to list so that it can help you in every job easier and faster.",
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                        ),

                        BoardingPages(
                          image: 'assets/pictures/onboardingImage2.png',
                          title:
                              'Find the practicality in making your todo list',
                          description:
                              'Easy-to-understand user interface that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity',
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
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

class BoardingPages extends StatelessWidget {
  final Function()? onPressed;
  final String? image;
  final String? title;
  final String? description;
  const BoardingPages({
    super.key,
    this.image,
    this.title,
    this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Skip',
                    style: TextStyle(color: Color(0xFF24A19C), fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Column(
                children: [
                  Image.asset('$image', width: 375),
                  Text(
                    '$title',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0,
                      // fontFamily: 'SF Pro Text',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    '$description',
                    style: TextStyle(color: Color(0xFF767E8C)),
                  ),
                  SizedBox(height: 100),
                  SizedBox(
                    height: 56,
                    width: 327,
                    child: ElevatedButton(
                      onPressed: onPressed,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xFF24A19C),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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

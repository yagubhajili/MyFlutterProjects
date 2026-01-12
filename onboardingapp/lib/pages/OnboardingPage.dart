import 'package:flutter/material.dart';
import 'package:onboardingapp/extensions/BoardingPages.dart';
import 'package:onboardingapp/extensions/OnboardingIndicator.dart';

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF24A19C),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: PageView(
                    clipBehavior: Clip.none,
                    // physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    children: [
                      BoardingPages(
                        image: 'assets/pictures/onboardingImage1.png',
                        title: 'All your favorites',
                        description:
                            "Get all your loved food in one place, \n you just place the order and we do the rest",
                      ),

                      BoardingPages(
                        image: 'assets/pictures/onboardingImage2.png',
                        title: 'Order from choosen chef',
                        description:
                            'Get all your loved food in one place, \n you just place the order and we do the rest',
                      ),
                      BoardingPages(
                        image: 'assets/pictures/onboardingImage3.png',
                        title: 'Free delivery offers',
                        description:
                            'Get all your loved food in one place, \n you just place the order and we do the rest',
                      ),
                      BoardingPages(
                        image: 'assets/pictures/onboardingImage4.png',
                        title: 'Free delivery offers',
                        description:
                            'Get all your loved food in one place, \n you just place the order and we do the rest',
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
                      color: currentPage == 0
                          ? Color(0xFFff7622)
                          : Color(0xFFffe1ce),
                    ),
                    SizedBox(width: 6),
                    OnboardingIndicator(
                      color: currentPage == 1
                          ? Color(0xFFff7622)
                          : Color(0xFFffe1ce),
                    ),
                    SizedBox(width: 6),
                    OnboardingIndicator(
                      color: currentPage == 2
                          ? Color(0xFFff7622)
                          : Color(0xFFffe1ce),
                    ),
                    SizedBox(width: 6),

                    OnboardingIndicator(
                      color: currentPage == 3
                          ? Color(0xFFff7622)
                          : Color(0xFFffe1ce),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {
                          if (currentPage < 3) {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          } else {
                            Navigator.pushReplacementNamed(
                              context,
                              '/homepage',
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0xFFff7622),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        child: Text(
                          currentPage < 3 ? 'Next' : 'Continue ',

                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      child: Text(
                        'skip',
                        style: TextStyle(color: Color(0xFF767E8C)),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/homepage');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

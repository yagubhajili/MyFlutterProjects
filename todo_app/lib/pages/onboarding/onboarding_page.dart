import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/extensions/navgiation_indicator.dart';
import 'package:todo_app/extensions/navigation_pngs.dart';
import 'package:todo_app/extensions/navigation_texts.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  PageController pngController = PageController();
  PageController textController = PageController();
  bool hasSeenOnboarding = false;

  Future<void> completeOnboarding(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_completed', true);

    Navigator.pushNamedAndRemoveUntil(context, '/homepage', (route) => false);
  }

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
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacementNamed(context, '/homepage');
                    completeOnboarding(context);
                  },
                  child: Text(
                    'SKIP',
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.44),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pngController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
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
                  NavigationIndicators(
                    color: currentIndex == 0
                        ? Color(0xffffffff)
                        : Color(0xffAFAFAF),
                  ),
                  SizedBox(width: 8),
                  NavigationIndicators(
                    color: currentIndex == 1
                        ? Color(0xffffffff)
                        : Color(0xffAFAFAF),
                  ),
                  SizedBox(width: 8),

                  NavigationIndicators(
                    color: currentIndex == 2
                        ? Color(0xffffffff)
                        : Color(0xffAFAFAF),
                  ),
                ],
              ),
              SizedBox(height: 50),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  controller: textController,
                  children: [
                    NavigationTexts(
                      mainText: 'Manage your tasks',
                      subText:
                          'You can easily manage all of your daily tasks in DoMe for free',
                    ),
                    NavigationTexts(
                      mainText: 'Create daily routine',
                      subText:
                          'In Uptodo you can create your personalized routine to stay productive',
                    ),
                    NavigationTexts(
                      mainText: 'Orgonaize your tasks',
                      subText:
                          'You can organize your daily tasks by adding your tasks into separate categories',
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (currentIndex > 0) {
                        pngController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                        textController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text(
                      currentIndex == 0 ? '' : 'BACK',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withValues(alpha: 0.44),
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xff8875FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        if (currentIndex < 2) {
                          pngController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                          textController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        } else {
                          // Navigator.pushReplacementNamed(context, '/homepage');
                          completeOnboarding(context);
                        }
                      },
                      child: Text(currentIndex == 2 ? "GET STARTED" : "NEXT"),
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

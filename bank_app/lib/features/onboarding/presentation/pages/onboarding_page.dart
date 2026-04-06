import 'package:bank_app/core/constants/colors.dart';
import 'package:bank_app/features/home/presentation/pages/home_page.dart';
import 'package:bank_app/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:bank_app/features/onboarding/presentation/widgets/onboarding_indocator.dart';
import 'package:bank_app/features/onboarding/presentation/widgets/onobarding_page_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingCubit>(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                // Navigate to home page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                context.read<OnboardingCubit>().completeOnboarding();
              },
              child: Text('Skip'),
            ),
            SizedBox(width: 15),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
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

            BlocConsumer<OnboardingCubit, OnboardingState>(
              listener: (context, state) {
                if (state is OnboardingComplete) {
                  // Navigate to home page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
              },
              builder: (context, state) {
                int currentPage = 0;
                if (state is OnboardingInitial) {
                  currentPage = state.currentPage;
                }
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(3, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: OnboardingIndicator(
                                isActive: currentPage == index,
                              ),
                            );
                          }),
                        ),
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColors.textLight,
                            ),
                            foregroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            fixedSize: WidgetStatePropertyAll(Size(50, 50)),
                          ),
                          onPressed: () {
                            if (currentPage < 2) {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                              context.read<OnboardingCubit>().updateCurrentPage(
                                currentPage + 1,
                              );
                            } else {
                              context
                                  .read<OnboardingCubit>()
                                  .completeOnboarding();
                            }
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

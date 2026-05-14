import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bank_app/core/constants/colors.dart';
import 'package:bank_app/features/home/presentation/pages/home_page.dart';
import 'package:bank_app/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:bank_app/features/onboarding/presentation/widgets/onboarding_indocator.dart';
import 'package:bank_app/features/onboarding/presentation/widgets/onobarding_page_slide.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _State();
}

class _State extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose(); // Prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingCubit>(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Builder(
              // Needed to get the correct context for Bloc
              builder: (context) => TextButton(
                onPressed: () =>
                    context.read<OnboardingCubit>().completeOnboarding(),
                child: const Text('Skip'),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
        body: BlocConsumer<OnboardingCubit, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingComplete) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            }
          },
          builder: (context, state) {
            int currentPage = 0;
            if (state is OnboardingInitial) {
              currentPage = state.currentPage;
            }

            return Column(
              children: [
                Expanded(
                  // Use Expanded instead of hardcoded MediaQuery multipliers
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: const [
                      OnboardingPageSlide(),
                      OnboardingPageSlide(
                        imagePath: 'assets/images/onboarding2.png',
                        title: 'Track your spending',
                        description:
                            'Monitor your expenses and make informed decisions',
                      ),
                      OnboardingPageSlide(
                        imagePath: 'assets/images/onboarding3.png',
                        title: 'Achieve your goals',
                        description: 'Stay on track and reach your milestones',
                      ),
                    ],
                  ),
                ),
                _buildBottomControls(context, currentPage),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildBottomControls(BuildContext context, int currentPage) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 5),
                child: OnboardingIndicator(isActive: currentPage == index),
              ),
            ),
          ),
          FloatingActionButton(
            backgroundColor: AppColors.textLight,
            onPressed: () {
              if (currentPage < 2) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                context.read<OnboardingCubit>().updateCurrentPage(
                  currentPage + 1,
                );
              } else {
                context.read<OnboardingCubit>().completeOnboarding();
              }
            },
            child: Icon(Icons.arrow_forward_ios, color: AppColors.textPrimary),
          ),
        ],
      ),
    );
  }
}

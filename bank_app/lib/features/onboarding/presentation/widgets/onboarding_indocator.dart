import 'package:bank_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.indicatorActive
            : AppColors.indicatorInactive,
        shape: BoxShape.circle,
      ),
    );
  }
}

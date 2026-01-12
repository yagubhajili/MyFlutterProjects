import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';

class NavigationTexts extends StatelessWidget {
  final String? mainText;
  final String? subText;

  const NavigationTexts({super.key, this.mainText, this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$mainText',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 42),
        Text(
          '$subText',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.87),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

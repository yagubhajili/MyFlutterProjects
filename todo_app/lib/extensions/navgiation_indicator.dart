import 'package:flutter/material.dart';

class NavigationIndicators extends StatelessWidget {
  final Color color;
  const NavigationIndicators({super.key, this.color = const Color(0xffAFAFAF)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 27,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(56),
      ),
    );
  }
}

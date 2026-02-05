import 'package:flutter/material.dart';

class NavigationPngs extends StatelessWidget {
  final String? png;
  const NavigationPngs({super.key, this.png});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          '$png',
          // width: 213,
          height: 278,
        ),
      ],
    );
  }
}

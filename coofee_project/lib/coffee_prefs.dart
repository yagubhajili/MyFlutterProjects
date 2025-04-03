import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength: '),
            Text('3'),
            Image.asset(
              'assets/images/coffee_bean.png',
              width: 25,
              color: Color.fromARGB(255, 162, 116, 99),
              colorBlendMode: BlendMode.multiply,
            ),
            SizedBox(width: 50),
          ],
        ),
        Row(
          children: [
            Text('Sugars: '),
            Text('3'),
            Image.asset(
              'assets/images/sugar_cube.png',
              width: 25,
              color: Color.fromARGB(255, 162, 116, 99),
              colorBlendMode: BlendMode.multiply,
            ),
            SizedBox(width: 50),
          ],
        ),
      ],
    );
  }
}

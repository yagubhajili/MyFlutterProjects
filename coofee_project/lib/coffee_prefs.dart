import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength() {
    print('inc by 1');
  }

  void increaseSugar() {
    print('inc by 1 sugar');
  }

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
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 120, 72, 24),
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: Text('+'),
            ),
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
            Expanded(child: SizedBox()),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: increaseSugar,
              child: Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}

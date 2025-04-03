import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength: '),
            Text('$strength'),
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
            Text('$sugars'),
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

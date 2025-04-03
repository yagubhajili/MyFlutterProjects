import 'package:coofee_project/styled_body_text.dart';
import 'package:coofee_project/styled_button.dart';
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
            StyledBodyText('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/images/coffee_bean.png',
                width: 25,
                color: Color.fromARGB(255, 162, 116, 99),
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: Text('+')),
          ],
        ),
        Row(
          children: [
            StyledBodyText('Sugars: '),

            if (sugars == 0) StyledBodyText('No Sugar..'),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/images/sugar_cube.png',
                width: 25,
                color: Color.fromARGB(255, 162, 116, 99),
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseSugar, child: Text('+')),
          ],
        ),
      ],
    );
  }
}

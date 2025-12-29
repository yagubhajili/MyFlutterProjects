import 'dart:io';

import 'package:flutter/material.dart';

class Figmaproject extends StatelessWidget {
  const Figmaproject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Splash.png'),
                const SizedBox(height: 12), // space between image & text
                const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

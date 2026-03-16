import 'package:flutter/material.dart';
import 'package:food_go/core/theme/app_theme.dart';
import 'package:food_go/features/home/presentation/home_screen.dart';

class FoodGoApp extends StatelessWidget {
  const FoodGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1565C0),
          brightness: Brightness.dark,
        ),
        fontFamily: 'Roboto',
        useMaterial3: true,
      );

  static List<Color> gradientForCondition(String condition) {
    switch (condition.toLowerCase()) {
      case 'clear':
        return [const Color(0xFFFF8C00), const Color(0xFFFF4500)];
      case 'clouds':
        return [const Color(0xFF546E7A), const Color(0xFF37474F)];
      case 'rain':
      case 'drizzle':
        return [const Color(0xFF1565C0), const Color(0xFF0D47A1)];
      case 'thunderstorm':
        return [const Color(0xFF212121), const Color(0xFF37474F)];
      case 'snow':
        return [const Color(0xFF78909C), const Color(0xFFB0BEC5)];
      case 'mist':
      case 'fog':
      case 'haze':
        return [const Color(0xFF78909C), const Color(0xFF546E7A)];
      default:
        return [const Color(0xFF1565C0), const Color(0xFF0D47A1)];
    }
  }
}

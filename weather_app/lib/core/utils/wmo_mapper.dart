import 'package:flutter/material.dart';

String wmoToDescription(int code) {
  if (code == 0) return 'Clear sky';
  if (code == 1) return 'Mainly clear';
  if (code == 2) return 'Partly cloudy';
  if (code == 3) return 'Overcast';
  if (code <= 48) return 'Foggy';
  if (code <= 55) return 'Drizzle';
  if (code <= 65) return 'Rain';
  if (code <= 77) return 'Snow';
  if (code <= 82) return 'Rain showers';
  if (code <= 86) return 'Snow showers';
  if (code >= 95) return 'Thunderstorm';
  return 'Unknown';
}

String wmoToMain(int code) {
  if (code <= 1) return 'clear';
  if (code <= 3) return 'clouds';
  if (code <= 48) return 'mist';
  if (code <= 67) return 'rain';
  if (code <= 86) return 'snow';
  return 'thunderstorm';
}

IconData wmoToIcon(int code) {
  if (code == 0) return Icons.wb_sunny;
  if (code == 1) return Icons.wb_sunny_outlined;
  if (code <= 3) return Icons.cloud;
  if (code <= 48) return Icons.foggy;
  if (code <= 55) return Icons.grain;
  if (code <= 65) return Icons.water_drop;
  if (code <= 77) return Icons.ac_unit;
  if (code <= 82) return Icons.water_drop_outlined;
  if (code <= 86) return Icons.cloudy_snowing;
  return Icons.thunderstorm;
}

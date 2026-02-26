import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  String _currentLocale = 'en';

  String get currentLocale => _currentLocale;

  LanguageProvider() {
    _loadLocale();
  }

  void _loadLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _currentLocale = prefs.getString('language') ?? 'en';
    notifyListeners();
  }

  void setLocale(String value) async {
    _currentLocale = value;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', value);
    notifyListeners();
  }
}

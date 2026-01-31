import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/home/homePage.dart';
import 'package:todo_app/onboarding/onboarding_page.dart';
import 'package:todo_app/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final seenOnboarding = prefs.getBool('onboarding_completed') ?? false;

  runApp(ToDoApp(seenOnboarding: seenOnboarding));
}

class ToDoApp extends StatelessWidget {
  final bool seenOnboarding;
  const ToDoApp({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      // initialRoute: seenOnboarding ? '/homepage' : '/onboarding',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/splash': (context) => SplashPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/onboarding': (context) => OnboardingPage(),
        '/homepage': (context) => Homepage(),
      },
      home: seenOnboarding ? Homepage() : OnboardingPage(),
    );
  }
}

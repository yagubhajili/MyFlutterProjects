import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/l10n/app_localizations.dart';
import 'package:todo_app/pages/calendar/calendar.dart';
import 'package:todo_app/pages/home/home_page.dart';
import 'package:todo_app/pages/onboarding/onboarding_page.dart';
import 'package:todo_app/auth/login/login_page.dart';
import 'package:todo_app/auth/register/register.dart';
import 'package:todo_app/pages/profile/profile_page.dart';
import 'package:todo_app/pages/splash/splash_page.dart';
import 'package:todo_app/providers/todo_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final seenOnboarding = prefs.getBool('onboarding_completed') ?? false;
  // final seenOnboarding = false;

  runApp(ToDoApp(seenOnboarding: seenOnboarding));
}

class ToDoApp extends StatelessWidget {
  final bool seenOnboarding;
  const ToDoApp({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TodoProvider>(create: (_) => TodoProvider()),
      ],
      child: MaterialApp(
        title: 'Localizations Sample App',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale('az'), // Set the default locale to Azerbaijani

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
          '/loginpage': (context) => LoginPage(),
          '/calendar': (context) => Calendar(),
          '/register': (context) => Register(),
          '/profile': (context) => ProfilePage(),
        },
        home: seenOnboarding ? Homepage() : OnboardingPage(),
      ),
    );
  }
}

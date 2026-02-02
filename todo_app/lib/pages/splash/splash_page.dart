import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Start the delayed navigation logic
    navigateToHome();
  }

  void navigateToHome() async {
    // Wait for 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    // Navigate to the HomeScreen and replace the current screen on the stack
    if (mounted) {
      Navigator.pushNamed(context, '/onboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset('assets/pngs/Splash_png.png', width: 113),
            Text('UpTodo', style: TextStyle(fontSize: 40)),
          ],
        ),
      ),
    );
  }
}

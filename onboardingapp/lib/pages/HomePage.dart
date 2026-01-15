import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('Welcome to the Home Page!'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginpage');
                },
                child: Text('Go to Login Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

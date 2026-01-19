import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff3629B7),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3629B7),
                    ),
                  ),
                  Text('Hello there, sign in to continue'),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('assets/pictures/Illustration.png')],
                  ),
                  SizedBox(height: 32),

                  LoginInputs(hintText: 'Email'),
                  SizedBox(height: 16),
                  LoginInputs(hintText: 'Password'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginInputs extends StatelessWidget {
  final String? hintText;
  const LoginInputs({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // labelText: 'Email',
        hint: Text(
          '$hintText',
          style: TextStyle(color: Color.fromARGB(255, 113, 113, 119)),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff3629B7)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 177, 175, 204)),
        ),
      ),
    );
  }
}

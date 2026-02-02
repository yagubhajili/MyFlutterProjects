import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/extensions/input_fields.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 41),
                  Text('REGISTER', style: TextStyle(fontSize: 32)),
                  SizedBox(height: 53),
                  InputFields(
                    label: "Username",
                    hintText: 'Enter your Username',
                  ),
                  SizedBox(height: 25),
                  InputFields(label: 'Password', hintText: '* * * * * * * '),
                  SizedBox(height: 25),

                  InputFields(
                    label: 'Confirm Password',
                    hintText: '* * * * * * * ',
                  ),

                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff4c4c7c),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text('Register', textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(thickness: 1, color: Color(0xff979797)),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "or",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),

                      Expanded(
                        child: Divider(thickness: 1, color: Color(0xff979797)),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset('assets/pngs/google.png', width: 24),

                      label: Text(
                        "Register with Google",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF8875FF)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.apple,
                        color: Colors.white,
                        size: 24,
                      ),
                      label: Text(
                        "Register with Apple",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF8875FF)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account? ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(color: Colors.white),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.popAndPushNamed(
                                      context,
                                      '/loginpage',
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app_user_input/pages/home_page.dart';
// import 'package:todo_app_user_input/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

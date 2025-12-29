import 'package:flutter/material.dart';
import 'package:myapp/pages/classStructure.dart';
import 'package:myapp/pages/containerTask.dart';
import 'package:myapp/pages/figmaProject.dart';
import 'package:myapp/pages/flag.dart';
import 'package:myapp/pages/testApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Figmaproject();
  }
}

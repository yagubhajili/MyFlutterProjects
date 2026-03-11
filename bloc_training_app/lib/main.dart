import 'package:flutter/material.dart';

void main() {
  runApp(BlocTrainingApp());
}

class BlocTrainingApp extends StatelessWidget {
  const BlocTrainingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('data'))),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffee App"),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: Text('saaasssaaaff'),
    );
  }
}

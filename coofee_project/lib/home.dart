import 'package:coofee_project/coffee_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coffee App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown,
            padding: EdgeInsets.all(10),
            child: Text('how i like my coffee'),
          ),
          Container(
            color: const Color.fromARGB(255, 162, 116, 99),
            padding: EdgeInsets.all(10),
            child: CoffeePrefs(),
          ),
        ],
      ),
    );
  }
}

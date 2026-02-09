import 'package:flutter/material.dart';

class Containertask extends StatelessWidget {
  const Containertask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 24, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(color: Colors.green, width: 1, height: 100),
                ],
              ),
            ),
            // SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 100, height: 260, color: Colors.red),
                Container(width: 100, height: 260, color: Colors.yellow),
                Container(width: 100, height: 260, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

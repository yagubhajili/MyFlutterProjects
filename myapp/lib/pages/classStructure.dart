import 'package:flutter/material.dart';

class Classstructure extends StatelessWidget {
  const Classstructure({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                      child: Text('S', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
              ],
            ),
            SizedBox(width: 10),

            Column(
              children: [
                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(width: 30, height: 30, color: Colors.red),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

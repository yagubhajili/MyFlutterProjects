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
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('O', textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                      child: Text('A', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('S', textAlign: TextAlign.center),
                    ),
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
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                      child: Text('Y', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('F', textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                      child: Text('Ö', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('G', textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                      child: Text('N', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('E', textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                      child: Text('E', textAlign: TextAlign.center),
                    ),
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
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('M', textAlign: TextAlign.center),
                    ),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('E', textAlign: TextAlign.center),
                    ),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                      child: Text('S', textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                      child: Icon(Icons.circle, size: 10, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      // alignment: Alignment.center,
                      width: 60,
                      height: 30,
                      color: Colors.red,
                      child: Icon(Icons.circle, size: 10, color: Colors.black),
                      // child: Center(

                      //   child: Text('.', style: TextStyle(fontSize: 10)),
                      // ),
                    ),
                    // Container(width: 30, height: 30, color: Colors.green),
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

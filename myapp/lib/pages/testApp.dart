import 'package:flutter/material.dart';

class Testapp extends StatelessWidget {
  const Testapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'TEST',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 400,
                // color: Colors.red,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 10),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.amberAccent,
                      width: 50,
                      height: 200,
                    ),
                    Column(
                      children: [
                        Container(width: 50, height: 90, color: Colors.red),
                        SizedBox(height: 15),
                        Container(width: 50, height: 90, color: Colors.red),
                      ],
                    ),
                    Text(
                      'test',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 7),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 7),
                  ),
                ),
                Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

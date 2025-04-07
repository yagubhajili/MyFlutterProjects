import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       backgroundColor: Colors.purple[200],
  //       appBar: AppBar(
  //         title: Text('My App'),
  //         centerTitle: true,
  //         backgroundColor: Colors.purple[400],
  //         leading: Icon(Icons.menu),
  //         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
  //       ),
  //       body: Center(
  //         child: Container(
  //           height: 300,
  //           width: 300,
  //           decoration: BoxDecoration(
  //             color: Colors.purple,
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           child: Icon(Icons.favorite, color: Colors.white, size: 30),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  // This widget is the root of your application.

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: ListView(
  //         children: [
  //           Container(height: 550, color: Colors.blue),
  //           Container(height: 350, color: Colors.red),
  //           Container(height: 350, color: Colors.green),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  List names = ['yaqub', 'elcan', 'iman', 'malik', 'oqtay'];

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: ListView.builder(
  //         itemCount: names.length,
  //         itemBuilder: (context, index) => ListTile(title: Text(names[index])),
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: GridView.builder(
  //         itemCount: 64,
  //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 8,
  //         ),
  //         itemBuilder:
  //             (context, index) =>
  //                 Container(color: Colors.red, margin: EdgeInsets.all(3)),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            // big container
            Container(height: 300, width: 300, color: Colors.blue),
            // mid container
            Container(height: 200, width: 200, color: Colors.red),
            // small container
            Container(height: 100, width: 100, color: Colors.green),
          ],
        ),
      ),
    );
  }
}

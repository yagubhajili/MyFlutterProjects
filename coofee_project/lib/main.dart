import 'package:coofee_project/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

// class Sandbox extends StatelessWidget {
//   const Sandbox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Sandbox'), backgroundColor: Colors.grey),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(width: 100, color: Colors.red, child: Text('one')),

//           Container(width: 200, color: Colors.green, child: Text('two')),

//           Container(width: 300, color: Colors.blue, child: Text('three')),
//         ],
//       ),
//     );
//   }
// }

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sandbox'), backgroundColor: Colors.grey),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(height: 100, color: Colors.red, child: Text('one')),
          Container(height: 200, color: Colors.green, child: Text('two')),
          Container(height: 300, color: Colors.blue, child: Text('three')),
        ],
      ),
    );
  }
}

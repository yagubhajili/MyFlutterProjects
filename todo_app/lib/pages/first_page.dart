import 'package:flutter/material.dart';
// import 'package:todo_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('first page'),
  //       centerTitle: true,
  //       backgroundColor: Colors.blue[400],
  //     ),
  //     drawer: Drawer(
  //       backgroundColor: Colors.blue[200],
  //       child: Column(
  //         children: [
  //           DrawerHeader(child: Icon(Icons.favorite, size: 48)),
  //           ListTile(
  //             leading: Icon(Icons.home),
  //             title: Text(' H O M E'),
  //             onTap: () {
  //               //to close the drawer when going back
  //               Navigator.pop(context);
  //               Navigator.pushNamed(context, '/homepage');
  //             },
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.settings),
  //             title: Text(' S E T T I N G S'),
  //             onTap: () {
  //               Navigator.pushNamed(context, '/settingspage');
  //             },
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

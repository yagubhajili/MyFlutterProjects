import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(title: Text('Azerbaijani')),
          ListTile(title: Text('English')),
        ],
      ),
    );
  }
}

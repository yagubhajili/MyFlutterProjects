import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(leading: Icon(Icons.back_hand)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text('Profile', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 24),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/yagub.jpeg'),
                  ),
                  SizedBox(height: 15),
                  Text('Yagub Hajili'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
                  Text('Yagub Hajili', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 154,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Color(0xff363636),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text('10 Task left'),
                      ),
                      // SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        width: 154,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Color(0xff363636),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text('5 Task done'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Settings',
                      style: TextStyle(color: Color(0xffAFAFAF)),
                    ),
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.settings),
                    title: 'App Settings',
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Account',
                      style: TextStyle(color: Color(0xffAFAFAF)),
                    ),
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.person_outline_outlined),
                    title: 'Change account name',
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.key_sharp),
                    title: 'Change account password',
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.camera_alt_outlined),
                    title: 'Change account Image',
                  ),
                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Uptodo',
                      style: TextStyle(color: Color(0xffAFAFAF)),
                    ),
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.widgets_outlined),
                    title: 'About US',
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.error_outline_rounded),
                    title: 'FAQ',
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.bolt),
                    title: 'Help & Feedback',
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.thumb_up_alt_outlined),
                    title: 'Support US',
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      SizedBox(width: 15),
                      Text(
                        'Log out',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileNavigations extends StatelessWidget {
  final Icon? leading;
  final String? title;
  const ProfileNavigations({super.key, this.leading, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: leading,
      title: Text(
        '$title',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white.withValues(alpha: 0.87),
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}

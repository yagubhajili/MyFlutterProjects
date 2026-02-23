import 'package:flutter/material.dart';
import 'package:todo_app/extensions/profile_navigations.dart';
import 'package:todo_app/l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final locals = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text(locals.profilePage, style: TextStyle(fontSize: 20)),
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
                        child: Text('${locals.taskLeft} 10'),
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
                        child: Text('${locals.taskDone} 5'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      locals.settings,
                      style: TextStyle(color: Color(0xffAFAFAF)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/appsettings');
                    },
                    child: ProfileNavigations(
                      leading: Icon(Icons.settings),
                      title: locals.appSettings,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      locals.account,
                      style: TextStyle(color: Color(0xffAFAFAF)),
                    ),
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.person_outline_outlined),
                    title: locals.accountNameChange,
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.key_sharp),
                    title: locals.accountPasswordChange,
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.camera_alt_outlined),
                    title: locals.accountImageChange,
                  ),
                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      locals.upToDo,
                      style: TextStyle(color: Color(0xffAFAFAF)),
                    ),
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.widgets_outlined),
                    title: locals.aboutUs,
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.error_outline_rounded),
                    title: locals.faq,
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.bolt),
                    title: locals.helpFeedback,
                  ),
                  ProfileNavigations(
                    leading: Icon(Icons.thumb_up_alt_outlined),
                    title: locals.supportUs,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      SizedBox(width: 15),
                      Text(
                        locals.logOut,
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

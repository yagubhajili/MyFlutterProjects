import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/widgets.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/providers/language_provider.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  // void localLocalegetter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<LanguageProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  provider.setLocale('az');
                },
                child: ListTile(
                  title: Text('Azerbaijani'),

                  trailing: provider.currentLocale == 'az'
                      ? Icon(Icons.done, color: Colors.green)
                      : null,
                ),
              ),
              GestureDetector(
                onTap: () {
                  provider.setLocale('en');
                },
                child: ListTile(
                  title: Text('English'),

                  trailing: provider.currentLocale == 'en'
                      ? Icon(Icons.done, color: Colors.green)
                      : null,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

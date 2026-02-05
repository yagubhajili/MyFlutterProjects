import 'package:flutter/material.dart';

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

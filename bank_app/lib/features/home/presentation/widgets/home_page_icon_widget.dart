import 'package:flutter/material.dart';

class HomePageIconWidgets extends StatelessWidget {
  final String label;
  final IconData icon;

  const HomePageIconWidgets({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.black),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}

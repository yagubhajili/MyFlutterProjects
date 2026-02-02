import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  final String? label;
  final String? hintText;

  const InputFields({super.key, this.label, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("$label", style: TextStyle(fontSize: 16)),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff979797), width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff979797), width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}

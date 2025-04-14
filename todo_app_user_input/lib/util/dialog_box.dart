import 'package:flutter/material.dart';
import 'package:todo_app_user_input/util/buttons.dart';

class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;

  final controller;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Buttons(text: 'Cancel', onPressed: onCancel),
                Buttons(text: 'Save', onPressed: onSave),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

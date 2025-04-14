import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.onChanged,
    required this.taskComplete,
    required this.taskName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: EdgeInsets.all(7),
        child: Row(
          children: [
            Checkbox(
              value: taskComplete,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            Text(
              taskName,
              style: TextStyle(
                decoration:
                    taskComplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

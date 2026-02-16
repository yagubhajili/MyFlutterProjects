import 'package:flutter/material.dart';
import 'package:todo_app/extensions/task_priority_flags.dart';

class PriorityFlagsPage extends StatelessWidget {
  const PriorityFlagsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Task priority'),
            Divider(thickness: 1, color: Color(0xff979797)),
            SizedBox(height: 18),

            Column(
              children: [
                Row(
                  children: [
                    TaskPriorityFlags(number: '1'),
                    SizedBox(width: 16),
                    TaskPriorityFlags(number: '2'),
                    SizedBox(width: 16),

                    TaskPriorityFlags(number: '3'),
                    SizedBox(width: 16),

                    TaskPriorityFlags(number: '4'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    TaskPriorityFlags(number: '5'),
                    SizedBox(width: 16),
                    TaskPriorityFlags(number: '6'),
                    SizedBox(width: 16),

                    TaskPriorityFlags(number: '7'),
                    SizedBox(width: 16),

                    TaskPriorityFlags(number: '8'),
                  ],
                ),
                SizedBox(height: 16),

                Row(
                  children: [
                    TaskPriorityFlags(number: '9'),
                    SizedBox(width: 16),
                    TaskPriorityFlags(number: '10'),
                  ],
                ),
                SizedBox(height: 18),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      width: 153,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text('Cancel'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      width: 153,
                      decoration: BoxDecoration(
                        color: Color(0xff8687E7),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Save'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

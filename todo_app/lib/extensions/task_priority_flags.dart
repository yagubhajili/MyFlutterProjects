import 'package:flutter/material.dart';

class TaskPriorityFlags extends StatelessWidget {
  final String? number;
  const TaskPriorityFlags({super.key, this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: Color(0xff272727),
        borderRadius: BorderRadius.circular(4),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.flag_outlined),
          SizedBox(height: 7),
          Text('$number'),
        ],
      ),
    );
  }
}

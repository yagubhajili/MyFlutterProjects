import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  TodoTile({
    super.key,
    required this.onChanged,
    required this.taskComplete,
    required this.taskName,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ],
        ),
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
      ),
    );
  }
}

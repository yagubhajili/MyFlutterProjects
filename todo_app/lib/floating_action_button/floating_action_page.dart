// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:todo_app/extensions/task_priority_flags.dart';
import 'package:todo_app/pages/priorityFlags/priority_flags_page.dart';
import 'package:todo_app/providers/todo_provider.dart';

class FloatingActionPage extends StatefulWidget {
  const FloatingActionPage({super.key});

  @override
  State<FloatingActionPage> createState() => _FloatingActionPageState();
}

class _FloatingActionPageState extends State<FloatingActionPage> {
  final TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<TodoProvider>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Add Task',
                      style: TextStyle(fontSize: 20),

                      //  textAlign: TextAlign.start
                    ),
                  ),
                  SizedBox(height: 14),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      // hintText: ,
                      border: OutlineInputBorder(),
                    ),
                    // onSubmitted: (value) {

                    // },
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Description',
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 32,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                              );
                            },
                            child: Icon(
                              Icons.access_time,
                              color: Colors.white.withValues(alpha: 0.87),
                            ),
                          ),
                          Icon(
                            Icons.category_rounded,
                            color: Colors.white.withValues(alpha: 0.87),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return PriorityFlagsPage();
                                },
                              );
                            },
                            child: Icon(
                              Icons.flag,
                              color: Colors.white.withValues(alpha: 0.87),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              final now = DateTime.now();
                              String hour = now.hour.toString(); 
                              String minute = now.minute.toString();
                              String day = now.day.toString();
                              String month = now.month.toString();
                              final currentTime = "$month-$day $hour:$minute";

                              Provider.of<TodoProvider>(
                                context,
                                listen: false,
                              ).addTask(
                                titleController.text,
                                currentTime.toString(),
                              );
                              titleController.clear();
                              // log(context)
                            },
                            child: Icon(
                              Icons.send_rounded,
                              color: Color(0xff8687E7),
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
        },
      ),
    );
  }
}

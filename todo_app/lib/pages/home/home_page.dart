// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:todo_app/extensions/task_priority_flags.dart';
import 'package:todo_app/floating_action_button/floating_action_page.dart';
import 'package:todo_app/l10n/app_localizations.dart';
import 'package:todo_app/providers/todo_provider.dart';
// import 'package:todo_app/profile/profile_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final locals = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(locals.homePage),
        centerTitle: true,
        // leading: Icon(Icons.filter_list),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, '/profile');
              },
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/yagub.jpeg'),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(),

      body: Consumer<TodoProvider>(
        builder: (context, value, child) {
          final tasks = value.tasks;
          // log(tasks[0].taskName);
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tasks.isEmpty
                    ? Column(
                        children: [
                          SizedBox(height: 75),
                          Center(
                            child: Image.asset(
                              'assets/pngs/checklist.png',
                              width: 227,
                            ),
                          ),
                          Text(
                            locals.homePageTextMiddle,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Text(
                            locals.homePageSubTextMiddle,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )
                    // ElevatedButton(onPressed: () {}, child: Text('+'),),
                    : Expanded(
                        child: ListView.builder(
                          itemCount: tasks.length,
                          itemBuilder: (context, index) {
                            final task = tasks[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xff363636),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              width: double.infinity,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      task.taskName,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        task.date,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffAFAFAF),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Provider.of<TodoProvider>(
                                              context,
                                              listen: false,
                                            ).removeTask(task);
                                          },
                                          child: Row(
                                            children: [
                                              Icon(Icons.delete, size: 14),
                                              SizedBox(width: 4),
                                              Text(
                                                'Delete',
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // TaskPriorityFlags(number: '1'),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            // context: context,
            builder: (BuildContext context) {
              return FloatingActionPage();
            },
          );
        },
        shape: CircleBorder(),

        child: Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          if (value == 0) {
            Navigator.pushNamed(context, '/homepage');
          }
          if (value == 1) {
            Navigator.pushNamed(context, '/calendar');
          }
          if (value == 2) {
            Navigator.pushNamed(context, '/loginpage');
          }
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Index'),
          NavigationDestination(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/extensions/task_priority_flags.dart';
// import 'package:todo_app/profile/profile_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INDEX'),
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

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 75),
          Center(child: Image.asset('assets/pngs/checklist.png', width: 227)),
          Text('What do you want to do today?', style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('Tap + to add your tasks', style: TextStyle(fontSize: 18)),

          // ElevatedButton(onPressed: () {}, child: Text('+'),),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Column(
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
                        decoration: InputDecoration(
                          // hintText: ,
                          border: OutlineInputBorder(),
                        ),
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
                                      return Dialog(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text('Task priority'),
                                              Divider(
                                                thickness: 1,
                                                color: Color(0xff979797),
                                              ),
                                              SizedBox(height: 18),

                                              // height: 64,
                                              // color: Color(0xff272727),

                                              // width: 64,
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      TaskPriorityFlags(
                                                        number: '1',
                                                      ),
                                                      SizedBox(width: 16),
                                                      TaskPriorityFlags(
                                                        number: '2',
                                                      ),
                                                      SizedBox(width: 16),

                                                      TaskPriorityFlags(
                                                        number: '3',
                                                      ),
                                                      SizedBox(width: 16),

                                                      TaskPriorityFlags(
                                                        number: '4',
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 16),
                                                  Row(
                                                    children: [
                                                      TaskPriorityFlags(
                                                        number: '5',
                                                      ),
                                                      SizedBox(width: 16),
                                                      TaskPriorityFlags(
                                                        number: '6',
                                                      ),
                                                      SizedBox(width: 16),

                                                      TaskPriorityFlags(
                                                        number: '7',
                                                      ),
                                                      SizedBox(width: 16),

                                                      TaskPriorityFlags(
                                                        number: '8',
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 16),

                                                  Row(
                                                    children: [
                                                      TaskPriorityFlags(
                                                        number: '9',
                                                      ),
                                                      SizedBox(width: 16),
                                                      TaskPriorityFlags(
                                                        number: '10',
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 18),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 24,
                                                              vertical: 12,
                                                            ),
                                                        width: 153,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                4,
                                                              ),
                                                        ),
                                                        child: Text('Cancel'),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 24,
                                                              vertical: 12,
                                                            ),
                                                        width: 153,
                                                        decoration: BoxDecoration(
                                                          color: Color(
                                                            0xff8687E7,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                4,
                                                              ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text('Save'),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),

                                              // GridView.count(
                                              //   crossAxisCount: 4,
                                              //   children: [
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              // Icon(Icons.flag_outlined),
                                              //   ],
                                              // ),
                                            ],
                                          ),
                                        ),
                                      );
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
                              Icon(
                                Icons.send_rounded,
                                color: Color(0xff8687E7),
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

import 'package:flutter/material.dart';
// import 'package:todo_app/extensions/task_priority_flags.dart';
import 'package:todo_app/floating_action_button/floating_action_page.dart';
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

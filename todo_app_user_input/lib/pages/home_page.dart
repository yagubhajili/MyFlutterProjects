import 'package:flutter/material.dart';
import 'package:todo_app_user_input/util/dialog_box.dart';
import 'package:todo_app_user_input/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List toDOList = [
    ["make the bed", false],
    ['study', false],
  ];

  void checkBoxTick(bool? value, int index) {
    setState(() {
      toDOList[index][1] = !toDOList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDOList.add([_controller.text, false]);
    });
    _controller.clear();
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onCancel: Navigator.of(context).pop,
          onSave: saveNewTask,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('To Do App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDOList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            onChanged: (value) => checkBoxTick(value, index),
            taskComplete: toDOList[index][1],
            taskName: toDOList[index][0],
          );
        },
      ),
    );
  }
}

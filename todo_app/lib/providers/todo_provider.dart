import 'package:flutter/material.dart';

class ToDo {
  final String taskName;

  ToDo({required this.taskName});
}

class TodoProvider extends ChangeNotifier {
  final List<ToDo> _tasks = [];

  List<ToDo> get tasks => _tasks;

  void addTask(String newTask) {
    final task = ToDo(taskName: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(ToDo task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ToDo {
  final String taskName;
  final String date;

  ToDo({required this.taskName, required this.date});
}

class TodoProvider extends ChangeNotifier {
  final List<ToDo> _tasks = [];

  List<ToDo> get tasks => _tasks;

  void addTask(String newTask, String date) {
    final task = ToDo(taskName: newTask, date: date);
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(ToDo task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

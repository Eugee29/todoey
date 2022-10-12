import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class Tasks extends ChangeNotifier {
  late final List<Task> _tasks = [
    Task('Task 1'),
    Task('Task 2'),
    Task('Task 3'),
  ];

  int get taskCount => _tasks.length;

  Task getTask(int index) => _tasks[index];

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }
}

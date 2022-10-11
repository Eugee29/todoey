import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function toggleTask;

  const TasksList(this.tasks, {super.key, required this.toggleTask});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) =>
          TaskTile(tasks[index], toggleTask: toggleTask),
    );
  }
}

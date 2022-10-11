import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function toggleTask;

  const TaskTile(this.task, {super.key, required this.toggleTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.text,
        style: task.isDone
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: (_) => toggleTask(task),
      ),
    );
  }
}

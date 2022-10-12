import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/providers/tasks.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasksData, child) => ListView.builder(
        itemCount: tasksData.taskCount,
        itemBuilder: (context, index) {
          final task = tasksData.getTask(index);
          return TaskTile(
            task,
            onChanged: (_) => tasksData.toggleTask(task),
            onLongPress: () => tasksData.deleteTask(task),
          );
        },
      ),
    );
  }
}

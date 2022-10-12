import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/providers/tasks.dart';

class AddTaskModal extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  AddTaskModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, taskData, child) => Container(
        color: const Color(0xFF757575),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                TextField(
                  controller: textController,
                  textAlign: TextAlign.center,
                  autofocus: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  child: TextButton(
                    onPressed: () {
                      taskData.addTask(Task(textController.text));
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

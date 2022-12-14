class Task {
  final String text;
  bool isDone;

  Task(this.text, {this.isDone = false});

  void toggleTask() => isDone = !isDone;
}

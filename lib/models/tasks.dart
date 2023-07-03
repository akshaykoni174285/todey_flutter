class Task {
  final String name;
  late final bool status;
  Task({required this.name, this.status = false});

  void toggleDone() {
    status = !status;
  }
}

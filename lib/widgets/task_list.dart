import 'package:flutter/material.dart';
import 'package:todey_flutter/widgets/task_list.dart';
import 'package:todey_flutter/widgets/task_tile.dart';
import 'package:todey_flutter/models/tasks.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: "buy milk"),
    Task(name: "do meditation"),
    Task(name: "brush "),
    Task(name: "brush "),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool ischecked = false;
  void checkboxCallback(checkboxState) {
    setState(() {
      ischecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "this is a task",
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
          checkboxState: ischecked, togglecheckboxState: checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final void Function(bool?) togglecheckboxState;
  TaskCheckbox(
      {required this.checkboxState, required this.togglecheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: togglecheckboxState,
    );
  }
}

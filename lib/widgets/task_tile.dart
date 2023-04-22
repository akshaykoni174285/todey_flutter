import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("this is a task"),
      trailing: Taskcheckbox(),
    );
  }
}

class Taskcheckbox extends StatefulWidget {
  const Taskcheckbox({
    super.key,
  });

  @override
  State<Taskcheckbox> createState() => _TaskcheckboxState();
}

class _TaskcheckboxState extends State<Taskcheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (newval) {
        setState(() {
          isChecked = newval;
        });
      },
    );
  }
}

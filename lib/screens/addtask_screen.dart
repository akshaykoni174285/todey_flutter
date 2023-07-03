import 'package:flutter/material.dart';

class AddList extends StatelessWidget {
  const AddList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Text(
            "New Task",
            style: TextStyle(
              color: Colors.blueAccent[100],
              fontSize: 40,
            ),
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(width: 40),
            ),
            hintText: "Add something",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: Container(
            color: Colors.blueAccent,
            child: Text("Add this task"),
          ),
          onPressed: () {},
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

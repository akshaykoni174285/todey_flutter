import 'package:flutter/material.dart';

class AddList extends StatelessWidget {
  const AddList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff696b6e),
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 40),
        decoration: BoxDecoration(
          color: Color(0xffE5E9F0),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Text(
              "New Task",
              style: TextStyle(
                color: Colors.blueAccent[100],
                fontSize: 40,
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
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                color: Colors.blueAccent,
                child: Text("Add this task"),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

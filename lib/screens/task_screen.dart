import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todey_flutter/widgets/task_list.dart';
import 'package:todey_flutter/screens/addtask_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddList(),
              ),
            ),
          );
        },
        backgroundColor: Color(0xff81A1C1),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xff81A1C1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 100, right: 50, left: 50, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xffE5E9F0),
                  child: Icon(
                    Icons.list,
                    size: 35,
                    color: Color(0xff81A1C1),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Todey",
                  style: TextStyle(
                    color: Color(0xff4C566A),
                    fontSize: 60,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '21 tasks',
                  style: TextStyle(
                    color: Color(0xffE5E9F0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TaskList(),
              decoration: BoxDecoration(
                color: Color(0xffE5E9F0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

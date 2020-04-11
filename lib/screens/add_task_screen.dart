import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/providers/task_provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;
    
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 50.0, left: 40.0, right: 40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 24,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(width: 3.0, color: Colors.lightBlueAccent),
                ),
              ),
              onChanged: (text){
                newTaskTitle = text;
              },
            ),
            SizedBox(height: 15.0),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskProvider>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

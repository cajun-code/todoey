import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/providers/task_provider.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (BuildContext context, TaskProvider data, Widget child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          final task = data.tasks[index];
          return TaskTile(
            title: task.name,
            isChecked: task.isDone,
            onChanged: (value){
              data.toggleTaskDone(index);
            },
            onLongPress: (){
              data.deleteTask(index);
            },
          );
        },
        itemCount: data.taskCount,
      );
      },
    );
  }
}

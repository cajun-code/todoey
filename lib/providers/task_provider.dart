import '../models/task.dart';
import 'package:flutter/material.dart';
import 'dart:collection';
class TaskProvider extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: "Eggs"),
    Task(name: "Milk")
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
  void addTask(String title){
    print(title);
    _tasks.add(Task(name: title));
    notifyListeners();
  }
  void toggleTaskDone(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }

}
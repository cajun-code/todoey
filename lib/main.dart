import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/task_provider.dart';
import 'screens/tasks_screen.dart';

void main() => runApp(TodoeyApp());

class TodoeyApp extends StatelessWidget {
  const TodoeyApp ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
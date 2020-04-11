import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String title;
  final Function(bool) onChanged;
  final Function onLongPress;
  const TaskTile({Key key, this.isChecked, this.title, this.onChanged, this.onLongPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: onChanged,
      ),
      onLongPress: onLongPress,
    );
  }
}

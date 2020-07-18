import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String todoTitle;
  final Function checkboxCallback;
  final Function onLongPressCallback;
  TodoTile(
      {this.isChecked,
      this.todoTitle,
      this.checkboxCallback,
      this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.yellowAccent,
      child: ListTile(
          onLongPress: onLongPressCallback,
          title: Text(
            todoTitle,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
              activeColor: Colors.lightBlueAccent,
              value: isChecked,
              onChanged: checkboxCallback)),
    );
  }
}

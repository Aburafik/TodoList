import 'package:flutter/material.dart';
import 'package:todolist/widgets/todo_tile.dart';
import 'package:todolist/models/todo.dart';

class TodoList extends StatefulWidget {
  final List<Todo> todos;
  TodoList({this.todos});
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.todos.length,
        itemBuilder: (context, index) {
          return TodoTile(
            onLongPressCallback: () {
              widget.todos.removeAt(index);
            },
            todoTitle: widget.todos[index].name,
            isChecked: widget.todos[index].isDone,
            checkboxCallback: (bool checkboxState) {
              setState(() {
                widget.todos[index].toggleDone();
              });
            },
          );
        });
  }
}

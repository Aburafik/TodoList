import 'package:flutter/material.dart';
import 'package:todolist/models/todo.dart';

class TodoData extends ChangeNotifier {
  List<Todo> todos = [
    Todo(name: 'Go to the market'),
    Todo(name: 'Back from School'),
    Todo(name: 'Fetching water'),
    Todo(name: 'Off to class'),
  ];
}

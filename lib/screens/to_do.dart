import 'package:flutter/material.dart';
import 'package:todolist/models/todo.dart';
import 'package:todolist/screens/addlist_screen.dart';
import 'package:todolist/widgets/todo_list.dart';

class Todoy extends StatefulWidget {
  @override
  _TodoyState createState() => _TodoyState();
}

class _TodoyState extends State<Todoy> {
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddList((newTodoTitle) {
                setState(() {
                  todos.add(Todo(name: newTodoTitle));
                });
                Navigator.pop(context);
              }),
            );
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30, left: 30, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 40,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Todo List',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${todos.length} Todo\'s',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: TodoList(todos: todos),
            ),
          )
        ],
      ),
    );
  }
}

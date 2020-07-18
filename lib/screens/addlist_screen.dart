import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddList extends StatelessWidget {
  final Function addTodoCallback;
  AddList(this.addTodoCallback);
  @override
  Widget build(BuildContext context) {
    String newTodoTitle;
    TextEditingController t1 = TextEditingController();
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add List',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newValue) {
                newTodoTitle = newValue;
              },
            ),
            FlatButton(
              color: Colors.blueAccent,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                addTodoCallback(newTodoTitle);
              },
            )
          ],
        ),
      ),
    );
  }
}

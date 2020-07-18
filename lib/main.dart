import 'package:flutter/material.dart';
import 'package:todolist/screens/to_do.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Todoy(),
    );
  }
}

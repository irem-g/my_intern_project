import 'package:flutter/material.dart';
import 'package:my_intern_project/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intern_Project',
      home: Login(),
    );
  }
}

import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  Widget build(BuildContext context) => new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      title: Text(
        'ADD',
        textAlign: TextAlign.center,
      ));
}

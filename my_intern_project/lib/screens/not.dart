import 'package:flutter/material.dart';

class Not extends StatelessWidget {
  Widget build(BuildContext context) => new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      title: Text(
        'WELCOME NOTIFICATIONS',
        textAlign: TextAlign.center,
      ));
}

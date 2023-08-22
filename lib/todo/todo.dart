import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20),
      Container(
        height: 230,
        width: 200,
        decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12)
      ),)
    ],);
  }
}
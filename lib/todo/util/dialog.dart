import 'package:flutter/material.dart';
import 'package:iic/todo/util/mybutton.dart';
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a New task",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //button

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(
                  width: 10,
                ),
                //cancel
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}

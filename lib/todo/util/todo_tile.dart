import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoTile(
      {super.key,
      required this.deleteFunction,
      required this.taskName,
      required this.taskComplete,
      required this.onChanged});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12 ),
          )
        ]),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              //checkbox
              Checkbox(
                  activeColor: Colors.black,
                  value: taskComplete,
                  onChanged: onChanged),

              //Task name
              Text(
                taskName,
                style: TextStyle(
                    fontSize: 16,
                    decoration: taskComplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 212, 212, 212),
                spreadRadius: 0,
                blurRadius: 12,
                offset: Offset(5, 5)
              )
            ],
              borderRadius: BorderRadius.circular(12), color: Colors.white),
        ),
      ),
    );
  }
}

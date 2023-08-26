import 'package:flutter/material.dart';
import 'package:iic/notes/add_note.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => AddNote()));
        },
        backgroundColor: Color(0xFF21409A),
        child: Icon(Icons.add),
      ),
    );
  }
}
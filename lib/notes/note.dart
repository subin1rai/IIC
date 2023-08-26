import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iic/notes/add_note.dart';
import 'package:provider/provider.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context,value, child)=> Scaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => AddNote()));
        },
        backgroundColor: Color(0xFF21409A),
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25,10,0,0),
            child: Text('Notes',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          ),
          CupertinoListSection.insetGrouped(
            children: [
              CupertinoListTile(title: Text('jajas')),
              CupertinoListTile(title: Text('jajas')),
              CupertinoListTile(title: Text('jajas')),
              CupertinoListTile(title: Text('jajas')),
            ],
          )
        ],
      ),
    ));
  }
}
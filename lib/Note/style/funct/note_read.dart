import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iic/Note/style/note_color.dart';

class NoteReadScreen extends StatefulWidget {
  QueryDocumentSnapshot doc;
  NoteReadScreen({super.key, required  this.doc});

  @override
  State<NoteReadScreen> createState() => _NoteReadScreenState();
}

class _NoteReadScreenState extends State<NoteReadScreen> {
  @override
  Widget build(BuildContext context) {
  int color_id = widget.doc['color_id'];

    return Scaffold(
      

      backgroundColor: NoteColor.cardColor[color_id],
      appBar: AppBar(
         backgroundColor: NoteColor.cardColor[color_id],
        iconTheme: IconThemeData(color: Colors.black),
         elevation: 0,
        //  leading: Padding(
        //    padding: const EdgeInsets.only(left: 350.0),
        //    child: IconButton(onPressed: (){
        //     FirebaseFirestore.instance.collection("Notes").delete();
        //    }, icon: Icon(Icons.delete)),
        //  ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.doc["note_title"],
                style: NoteColor.mainTitle,
              ),
              SizedBox(height: 4,),
              Text(
                widget.doc["creation_date"],
                style: NoteColor.dateTitle,
              ),
              SizedBox(height: 28,),
      
              Text(
                widget.doc["note_content"],
                style: NoteColor.mainContent,
                overflow: TextOverflow.ellipsis
              ),
            ],
          ),
      ),
    );
  }
}
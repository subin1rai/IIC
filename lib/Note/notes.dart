import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iic/Note/note_card.dart';
import 'package:iic/Note/style/funct/note_add.dart';
import 'package:iic/Note/style/funct/note_read.dart';
import 'package:iic/Note/style/note_color.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(backgroundColor: NoteColor.accentColor,onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>NoteAddScreen()));
      }, child: Icon(Icons.add),),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Your Recent Notes",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Notes").snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                //checking connetion state from firebase data
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasData) {
                  return GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: snapshot.data!.docs
                        .map((note) => noteCard(() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> NoteReadScreen(doc: note)));
                        }, note))
                        .toList(),
                  );
                }
                return Text(
                  'There is No Notes',
                  style: GoogleFonts.nunito(color: Colors.black),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

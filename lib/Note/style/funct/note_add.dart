import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iic/Note/style/note_color.dart';

class NoteAddScreen extends StatefulWidget {
  const NoteAddScreen({super.key});

  @override
  State<NoteAddScreen> createState() => _NoteAddScreenState();
}

class _NoteAddScreenState extends State<NoteAddScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = Random().nextInt(NoteColor.cardColor.length);
    String date = DateTime.now().toString();
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: NoteColor.accentColor,
        onPressed: () {
          FirebaseFirestore.instance.collection("Notes").add({
            "note_title": titleController.text,
            "creation_date": date,
            "note_content": contentController.text,
            "color_id": color_id
          }).then((value) {
            print(value.id);
            Navigator.pop(context);
          }).catchError(
              (error) => print('Failed to add new note due to $error'));
        },
        child: Icon(Icons.save),
      ),
      backgroundColor: NoteColor.cardColor[color_id],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: NoteColor.cardColor[color_id],
        elevation: 0,
        title: Text(
          'New Note',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: NoteColor.mainTitle,
              controller: titleController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Note Title',
                  hintStyle: NoteColor.mainTitle),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              date,
              style: NoteColor.dateTitle,
            ),
            SizedBox(
              height: 28,
            ),
            TextField(
              style: NoteColor.mainContent,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: contentController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Note Content',
                  hintStyle: NoteColor.mainContent),
            ),
          ],
        ),
      ),
    );
  }
}

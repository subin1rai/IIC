import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iic/Note/style/note_color.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: NoteColor.cardColor[doc['color_id']],
            borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doc["note_title"],
              style: NoteColor.mainTitle,
            ),
            SizedBox(height: 4,),
            Text(
              doc["creation_date"],
              style: NoteColor.dateTitle,
            ),
            SizedBox(height: 8,),

            Text(
              doc["note_content"],
              style: NoteColor.mainContent,
              overflow: TextOverflow.ellipsis
            ),
          ],
        ),
      ));
}

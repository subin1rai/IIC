import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iic/notes/not.dart';
import 'package:iic/notes/style/color.dart';
import 'package:intl/intl.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 2, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notes",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(0),
                    icon: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Icon(Icons.sort)))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                  hintText: "Search Notes...",
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                  fillColor: Colors.grey[300],
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                  
              itemCount: sampleNotes.length,
              itemBuilder: (context, index) {
                return Card(
                  color: getRandomColor(),
                  margin: EdgeInsets.only(bottom: 20),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      
                      title: RichText(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                              text: "${sampleNotes[index].title} \n",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 1.5),
                              children: [
                            TextSpan(
                                text: "${sampleNotes[index].content}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  height: 1.5,
                                ))
                          ])),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Edited:${DateFormat('EEE MMM d,yyyy h:mm a').format(sampleNotes[index].modifiedTime)}",
                          style: TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey[800]),
                        ),
                      ),
                      trailing:
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF21409A),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
  getRandomColor(){

    Random random = Random();
    return backgroundColors[random.nextInt(backgroundColors.length)];
  }
}

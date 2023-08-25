import 'package:flutter/material.dart';
import 'package:iic/notes/note.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController contentController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      //                 Navigator.push(context, MaterialPageRoute<void>(
                      // builder: (BuildContext context) => Notes(),));
                    },
                    padding: EdgeInsets.all(0),
                    icon: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Icon(Icons.arrow_back_ios_new)))
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                TextField(
                  controller: titleController,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title',
                    hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                ),
                TextField(
                  controller: contentController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type something here...',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pop(context,[titleController.text,contentController.text]);},
        child: Icon(Icons.save),
      ),
    );
  }
}

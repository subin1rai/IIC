import 'package:iic/notes/style/not.dart';

class NoteData {
  //overall list
  List<Note> allNote = [
    Note(id: 0, text: 'Subin'),
  ];

  //get note
  List<Note> getallNote() {
    return allNote;
  }

  //add a note

  void addNewNote(Note note) {
    allNote.add(note);
  }

  //update a note

  void updateNote(Note note, String text) {
    for (int i = 0; i < allNote.length; i++) {
      if (allNote[i].id == note.id) {
        allNote[i].text = text;
      }
    }
  }

  //delete a note
  void deleteNote(Note note){
    allNote.remove(note);
  }
}

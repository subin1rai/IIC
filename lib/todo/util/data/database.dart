import 'package:hive_flutter/hive_flutter.dart';

class  TodoDatabase{
List  todolist = [];

  final _myBox = Hive.box('myBox');

  void createinitialData(){
    todolist = [
      ["code",false]
    ];

   
  }
    //load the data from database

   void loadData(){
      todolist =_myBox.get("TODOLIST");
    } 

    void uPDATEData(){
      _myBox.put("TODOLIST",todolist);
    }
}
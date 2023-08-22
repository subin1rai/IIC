import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iic/schedule/schedule.dart';
import 'package:iic/todo/todo.dart';

import 'notes/note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selctedindex = 0;
  List<Widget>_widgetOption =<Widget> [
    Notes(),
    Schedule(),
    Todo(),

  ];

  void onItemTap(int index){
    setState(() {
      _selctedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Color(0xFF21409A),
          animationDuration: Duration(milliseconds: 300),
          
          onTap: onItemTap,
          items: [
            Image.asset('assets/note.png',height: 35,width: 35,),
            Image.asset('assets/schedule.png',height: 35,width: 35),
            Image.asset('assets/check.png',height: 35,width: 35),
            
          ]),
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Itahari International College",
            style: TextStyle(color: Color(0xFF21409A))),
        leading: Container(
          child: Image.asset("assets/iic.png"),
        ),
      ),
      body: Center(
       child: _widgetOption.elementAt(_selctedindex),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iic/schedule/subject.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:
              Padding(
                padding: const EdgeInsets.fromLTRB(18,16,18,0),
                child: ListView(
                  children: [
                    Subject(
                      sub1: 'ADv Programming',
                      sub2: 'ADv Programmingfffff',
                      color: Colors.green.shade100,
                      relatedIcon: Image.asset('assets/sunday.png',height: 47,width: 47,),
                      time: '2:30 Pm',
                      time2: '2:30 Pm',
                      hall1: 'SunKoshi',
                      hall2: 'SunKoshi'),],
                ),
              )
              )
        ],
      ),
    );
  }
}

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
            child:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             children: [
                Subject(
                    subText: 'Programming',
                    relatedIcon: Icon(
                      Icons.person,
                      size: 60,
                    ),
                    time: '2:30 Pm',
                    hall: 'SunKoshi'),
               
        ])
            
          )
        ],

      ),
    );
  }
}

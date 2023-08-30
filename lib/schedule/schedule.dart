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
              child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 0),
            child: ListView(
              children: [
                Subject(
                    sub1: 'ADv Programming',
                    sub2: 'Software Engineer',
                    color: Colors.green.shade100,
                    relatedIcon: Image.asset(
                      'assets/sunday.png',
                    height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 AM',
                    time2: '11:00 - 12:30 PM',
                    hall1: 'Islington',
                    hall2: 'Royal Albert'),
                    SizedBox(height: 5,),
                Subject(
                    sub1: 'IOT',
                    sub2: 'Database',
                    color: Colors.orange.shade100,
                    relatedIcon: Image.asset(
                      'assets/monday.png',
                    height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 AM',
                    time2: '11:00 - 12:30 PM',
                    hall1: 'Islington',
                    hall2: 'Royal Albert'),
                    SizedBox(height: 5,),

                Subject(
                    sub1: 'Network Operating',
                    sub2: 'Software Engineer',
                    color: Colors.deepPurple.shade100,
                    relatedIcon: Image.asset(
                      'assets/tuesday.png',
                    height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 AM',
                    time2: '11:00 - 12:30 PM',
                    hall1: 'Islington',
                    hall2: 'Royal Albert'),
                    
                    SizedBox(height: 5,),
                Subject(
                    sub1: 'ADv Programming',
                    sub2: 'Smart Data Discovery',
                    color: Colors.red.shade200,
                    relatedIcon: Image.asset(
                      'assets/wednesday.png',
                    height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 AM',
                    time2: '11:00 - 12:30 PM',
                    hall1: 'Islington',
                    hall2: 'Royal Albert'), SizedBox(height: 5,),
                Subject(
                    sub1: 'Database',
                    sub2: 'IOT',
                    color: Colors.yellow.shade100,
                    relatedIcon: Image.asset(
                      'assets/thursday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 AM',
                    time2: '11:00 - 12:30 PM',
                    hall1: 'Islington',
                    hall2: 'Royal Albert'), SizedBox(height: 5,),
                Subject(
                    sub1: 'Network Operating',
                    sub2: 'smart Data Discovery',
                    color: Colors.blue.shade100,
                    relatedIcon: Image.asset(
                      'assets/friday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 AM',
                    time2: '11:00 - 12:30 PM',
                    hall1: 'Islington',
                    hall2: 'Royal Albert'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

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
                    sub1: 'Cloud & IOT   ',
                    sub2: 'Network Operating',
                    color: Colors.green.shade100,
                    relatedIcon: Image.asset(
                      'assets/sunday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 PM',
                    time2: '10:30 - 12:00 PM',
                    hall1: 'Phewa',
                    hall2: 'Terhathum'),
                SizedBox(
                  height: 5,
                ),
                Subject(
                    sub1: 'Software Engineer',
                    sub2: 'Database',
                    color: Colors.orange.shade100,
                    relatedIcon: Image.asset(
                      'assets/monday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '12:00 - 1:30 PM',
                    time2: '2:00 - 3:30 PM',
                    hall1: 'Terhathum',
                    hall2: 'Terhathum'),
                SizedBox(
                  height: 5,
                ),
                Subject(
                    sub1: 'Network Operating',
                    sub2: 'Software Engineer',
                    color: Colors.deepPurple.shade100,
                    relatedIcon: Image.asset(
                      'assets/tuesday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '12:00 - 1:30 PM',
                    time2: '2:00 - 3:30 PM',
                    hall1: 'Regents Park',
                    hall2: 'Regents Park'),
                SizedBox(
                  height: 5,
                ),
                Subject(
                    sub1: 'Database             ',
                    sub2: 'Cloud & IOT',
                    color: Colors.red.shade200,
                    relatedIcon: Image.asset(
                      'assets/wednesday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '12:00 - 01:30 PM',
                    time2: '2:00 PM - 03:30 PM',
                    hall1: 'Royal Albert',
                    hall2: 'Royal Albert'),
                SizedBox(
                  height: 5,
                ),
                Subject(
                    sub1: 'Cloud & IOT             ',
                    sub2: 'Network Operating',
                    color: Colors.yellow.shade100,
                    relatedIcon: Image.asset(
                      'assets/thursday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '8:30 - 10:00 AM',
                    time2: '10:30 - 12:00 PM',
                    hall1: 'Barun',
                    hall2: 'Barun'),
                SizedBox(
                  height: 5,
                ),
                Subject(
                    sub1: 'Software Engineer',
                    sub2: 'Database',
                    color: Colors.blue.shade100,
                    relatedIcon: Image.asset(
                      'assets/friday.png',
                      height: 40,
                      width: 40,
                    ),
                    time: '12:30 - 02:00 PM',
                    time2: '02:30 - 04:00 PM',
                    hall1: 'Tamor',
                    hall2: 'Tamor'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

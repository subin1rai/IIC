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
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 0.9),
                  children: [
                Subject(
                    subText: 'ADv Programming',
                    color: Colors.green.shade100,
                    relatedIcon: Image.asset('assets/sunday.png'),
                    time: '2:30 Pm',
                    hall: 'SunKoshi'),
                Subject(
                    subText: 'Database',
                    color: Colors.blue.shade100,
                    relatedIcon: Image.asset('assets/monday.png'),
                    time: '2:30 Pm',
                    hall: 'SunKoshi'),
                Subject(
                    subText: 'Network Operating',
                    color: Colors.yellow.shade100,
                    relatedIcon: Image.asset('assets/tuesday.png'),
                    time: '2:30 Pm',
                    hall: 'SunKoshi'),
                Subject(
                    subText: 'software engineer',
                    color: Colors.deepPurple.shade100,
                    relatedIcon: Image.asset('assets/wednesday.png'),
                    time: '2:30 Pm',
                    hall: 'SunKoshi'),
                Subject(
                    subText: 'smart Data Disc',
                    color: Colors.orange.shade100,
                    relatedIcon: Image.asset('assets/thursday.png'),
                    time: '2:30 Pm',
                    hall: 'SunKoshi'),
                Subject(
                    subText: 'IOT',
                    color: Colors.red.shade200,
                    relatedIcon: Image.asset('assets/friday.png'),
                    time: '2:30 Pm',
                    hall: 'SunKoshi'),
              ]))
        ],
      ),
    );
  }
}

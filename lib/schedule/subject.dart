import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  final String subText;
  final Icon relatedIcon;
  final String time;
  final String hall;

  Subject(
      {super.key,
      required this.subText,
      required this.relatedIcon,
      required this.time,
      required this.hall});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 212, 212, 212),
                  spreadRadius: 0,
                  blurRadius: 12,
                  offset: Offset(5, 5))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Container(height: 45, child: relatedIcon)),
              SizedBox(height: 10),
              Text(
                subText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text(
                  //   'Hall : ',style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18
                  // ),),
                  Icon(Icons.house_rounded),
                  Text(
                    ' : $hall',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text('Time : ',
                  //     style:
                  //         TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                  Icon(Icons.timer),
                  Text(' :  $time', style: TextStyle(fontSize: 14))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

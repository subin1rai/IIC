import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subject extends StatelessWidget {
  final String sub1;
  final String sub2;
  final Image relatedIcon;
  final String time;
  final String time2;
  final String hall1;
  final String hall2;
  final Color color;

  Subject({
    super.key,
    required this.sub1,
    required this.sub2,
    required this.color,
    required this.relatedIcon,
    required this.time,
    required this.time2,
    required this.hall1,
    required this.hall2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
          height: 85,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 212, 212, 212),
                    spreadRadius: 0,
                    blurRadius: 12,
                    offset: Offset(5, 5))
              ]),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: relatedIcon,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,13,0,15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sub1,
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
              
                    ),
                    SizedBox(height: 5,),
                    Text(time,style:GoogleFonts.poppins(fontSize: 12)),
                    SizedBox(height: 5,),
                    Row(
                        children: [
                          Text('Hall: ',style: TextStyle(fontWeight: FontWeight.w500
                          ),),
                          Text( hall1,style:GoogleFonts.poppins(fontSize: 11)),
                        ],
                      ),
              
                  ],
                ),
              ),
              Padding(
                                padding: const EdgeInsets.fromLTRB(20,14,0,15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sub2,
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                
                      ),
                      SizedBox(height: 5,),
                      Text(time2,style:GoogleFonts.poppins(fontSize: 12)),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Hall: ',style: TextStyle(fontWeight: FontWeight.w500
                          ),),
                          Text( hall2,style:GoogleFonts.poppins(fontSize: 11)),
                        ],
                      ),
                
                    ],
                  ),
              ),
            ],
          )
          ),

    );
  }
}

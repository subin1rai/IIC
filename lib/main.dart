import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iic/homepage.dart';

void main() async {

  //init the hive
  await Hive.initFlutter();

  //open a box 
  var box = await Hive.openBox("myBox");
  runApp(const Iic());
}
class Iic extends StatelessWidget {
  const Iic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:iic/homepage.dart';

void main() {
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
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iic/homepage.dart';
import 'package:iic/notes/style/Note_data.dart';
import 'package:provider/provider.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
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
    return ChangeNotifierProvider(create: (context)=> NoteData(),
    builder: (contex,child) =>MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    )
      
    );
  }
}
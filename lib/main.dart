import 'package:flutter/material.dart';
import 'package:blingo/Home_Page.dart';

void main() {
  runApp(MyApp());
}
class  MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home_Page(),
    );
  }
}

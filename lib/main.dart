import 'package:flutter/material.dart';

// ignore: unused_import
import 'home.dart';
void main() {
 
  //runApp(My_app());z
   runApp(const Home_Pag());
}
// ignore: use_key_in_widget_constructors, camel_case_types
class My_app extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}
// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer:const Drawer(),
      // ignore: avoid_unnecessary_containers
      body:
       Container(
      color:Colors.red,
       width:double.infinity,
       height:90,
      child: const Text("عاصمة فلسطين" ,
      style:TextStyle(fontSize:40,color:Color.fromARGB(255, 255, 255, 255) ,
      fontWeight:FontWeight.w300 ,
      shadows: [Shadow(color:Color.fromARGB(255, 89, 54, 244), 
      blurRadius: 15.0 ,offset:Offset(2,12))],
      ),
      )
      )      
    );
  }
}

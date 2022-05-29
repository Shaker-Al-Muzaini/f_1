import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/page1.dart';
import 'package:flutter_application_2/pages/page2.dart';
import 'package:flutter_application_2/todo_app/pages/home_oage.dart';
import 'package:flutter_application_2/todo_app/pages/new_task_page.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( Provider(
    ChangeNotifierProvider<TaskProvider>(create: (context)=>TaskProvider()),
    child: ScreenUtilInit( 
       designSize: Size(392, 835),
         minTextAdapt: true,
      
      builder: () => MyMainApp()),
  ));
}
class MyMainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme:Provider.of<ThemeProvider>(context).isLight ? ThemeData.light(): ThemeData.dark(),
     home: TodoHomeScreen(),);
  }
}

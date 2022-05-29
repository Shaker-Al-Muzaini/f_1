import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_app/models/task_model.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class TaskWidget extends StatelessWidget{
  TaskModel task;
  TaskWidget(this.task);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
      decoration: BoxDecoration(
        gradient: task.isComplete? LinearGradient(colors: [
          Color(0xdd8A39E1),
          Color(0xaaB667F1),
        ]):LinearGradient(colors: [
          Color(0xddDD4A48),
          Color(0xaaFF6464),
        ]),
              // color: widget.task.isComplete?Colors.blue:Colors.red,
        borderRadius: BorderRadius.circular(10)),

      child: CheckboxListTile(
        activeColor: Colors.white,
        checkColor: Colors.black,
        value: task.isComplete,
      title: Text(task.name,style: TextStyle(fontSize: 18),),
      onChanged: (v){
      Provider.of<TaskProvider>(context,listen: false).updateTask(task);
      },
      
      ),
    );
  }
}
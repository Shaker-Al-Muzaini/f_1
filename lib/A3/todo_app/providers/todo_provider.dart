import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_app/models/task_model.dart';

class TaskProvider extends ChangeNotifier{
  bool isComplete=false;
  changeIsComplete(vaue){
    this.isComplete = vaue;
    notifyListeners();
  }
  List<TaskModel> allTasks = [];
  List<TaskModel> completeTasks = [];
  List<TaskModel> inCompleteTasks = [];
  fillAllLists(){
    completeTasks = allTasks.where((element) => element.isComplete).toList();
      inCompleteTasks = allTasks.where((element) => !element.isComplete).toList();
      notifyListeners();
  }
  addNewTask(TaskModel taskModel){
    allTasks.add(taskModel);
    fillAllLists();
  }
  deleteTask(TaskModel taskModel){
    allTasks.remove(taskModel);
     fillAllLists();
  }
  updateTask(TaskModel taskModel){
   int index =  allTasks.indexOf(taskModel);
   allTasks[index].isComplete =  !allTasks[index].isComplete;
   fillAllLists();
  }
}
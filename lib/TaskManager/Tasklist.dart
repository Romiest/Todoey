import 'package:flutter/material.dart';
import 'package:todoey/TaskManager/taskTile.dart';
import 'package:todoey/TaskManager/Tasks.dart';

class Tasklist extends StatefulWidget {
  List <Task>   tasks;
  Tasklist(this.tasks);

  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemBuilder: (context,index){
       return TaskTile(
         tasktitle: widget.tasks[index].name,
         checked: widget.tasks[index].isDone,
         checkboxtoggle:(checkBoxstate){
           setState(() {
            widget.tasks[index].toggleTask();
           });
         }, 
       );

     },
      itemCount:widget.tasks.length
    );
  }
}
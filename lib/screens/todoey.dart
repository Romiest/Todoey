import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/screens/Add_task.dart';
import 'package:todoey/TaskManager/Tasklist.dart';
import 'package:todoey/TaskManager/Tasks.dart';

class Todoey extends StatefulWidget {


  @override
  _TodoeyState createState() => _TodoeyState();
}

class _TodoeyState extends State<Todoey> {
  List <Task> tasks=[];
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          FloatingActionButton(
            heroTag: 'btn1',
            backgroundColor: Colors.lightGreenAccent[700],
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(context: context, builder: (context)=> AddTask(
                  (newTaskTitle){
                    setState(() {
                      if(newTaskTitle!=null) {
                        tasks.add(Task(name: newTaskTitle));
                        Navigator.pop(context);
                      }
                    });


                  }

              ));
            },
          ),
           SizedBox(height: 10,),
            FloatingActionButton(
              heroTag: 'btn2',
              backgroundColor: Colors.red[800],
              child: Icon(
                Icons.delete,
                size: 40,
                color: Colors.white,
              ),
              onPressed: (){
List <Task> newTasks=tasks;

for (int i=0;i<tasks.length;i++){
  if(newTasks[i].isDone==true)
  newTasks.removeAt(i);


}
                setState(() {

                  tasks=newTasks;

                });
              },
            )
        ]),
        backgroundColor: kBackground,
        body: Column(
          children: <Widget>[
            Header(),
            Divider(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    color: Color(0xFF111328),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                ),
                child: Tasklist(tasks),
              ),
            )
          ],
        )
    );
  }
}







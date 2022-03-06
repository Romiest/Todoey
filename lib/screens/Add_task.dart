import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;
  AddTask(this.addTaskCallback);

  Widget build(BuildContext context) {
    String newTaskname;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Header(),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    addTaskCallback(newTaskname);
                  },
                  backgroundColor: Colors.lightGreenAccent[700],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Add Task',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            width: 310,
            height: 50,
            child: TextField(
              onChanged: (newTitle) {
                newTaskname = newTitle;
              },
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

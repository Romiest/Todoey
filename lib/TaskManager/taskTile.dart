import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final String tasktitle;
  bool checked;
 Function  checkboxtoggle;
 TaskTile({this.checked,this.tasktitle,this.checkboxtoggle});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tasktitle,
      style: TextStyle(
        decoration: checked? TextDecoration.lineThrough:null
      ),
      ),
      trailing:  Checkbox(
          value: checked,
          activeColor: Colors.lightGreenAccent[700],
          onChanged: checkboxtoggle
      ),

    );
  }
}

// void checkboxcallback(bool checkboxstate){
//   setState(() {
//     checked=checkboxstate;
//   });

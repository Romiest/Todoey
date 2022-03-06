import 'package:flutter/material.dart';
var kBackground= Colors.lightBlue[800];

class MaroButton extends StatelessWidget {
  MaroButton({this.txt,this.f});
  String txt;
  Function f;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width:250,
      child: RaisedButton(

        padding: EdgeInsets.all(16),

        onPressed:f,
        child: Text(txt,
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'YujiMai'
          ),

        ),
        textColor: Colors.white,
        color: Colors.lightGreenAccent[700],
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),

        ),


      ),
    );
  }
}

class Header extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60,30,0,0),
      child: Row(
        children: <Widget>[
          Icon(Icons.list,
            color: Colors.lightGreenAccent[400],
            size: 60,
          ),
          Divider(
            indent: 30,
          ),
          Text('To Doey',
            style: TextStyle(
                fontSize: 40,
                fontFamily: 'Pacifico'
            ),

          )
        ],
      ),
    );
  }
}
class Texto extends StatefulWidget {
  Texto({this.txt,this.obsec,this.content});
  String txt;
  bool obsec;
  String content;


  @override
  _TextoState createState() => _TextoState();
}

class _TextoState extends State<Texto> {
  @override
  
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 100,
      child: TextFormField(
        controller: TextEditingController(text:widget.content ),
        onChanged: (value){
         widget.content=value;
        },
        validator: (value){
          if(value.isEmpty){
            return 'textfield is empty';
          }
        },
        obscureText: widget.obsec,
        style: TextStyle(
            color: Colors.black
        ),
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: widget.txt,

            hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
            )
        ) ,
      ),
    );
  }
}


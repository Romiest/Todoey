import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/screens/todoey.dart';
import 'package:todoey/users/user.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey=GlobalKey<FormState>();
  User user=User(name: '',password: '');
  Future save() async{
    var res=await http.post("http://10.0.2.2:8000/signin"  ,headers: <String,String>{
      'Context-Type':'application/json;charSet=UTF-8'
    },
    body: <String,String>{
     'name':user.name,
      'password':user.password
    }
    );
    print(res.body);
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: kBackground,
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Header(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,100,0,0),
              child: Texto(txt: 'user name',obsec: false,content: user.name,),

            ),
              Texto(txt: 'Password',obsec: true,content: user.password,),
                Divider(
                  height: 40,
                ),
              MaroButton(txt: 'Log in',f: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Todoey()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/screens/login_page.dart';
import 'package:todoey/screens/register_page.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: kBackground,
      body: Container(
        child: Column(
          children: <Widget>[
            Header(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,150,0,0),
              child:MaroButton(txt: 'log in',f:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              })
            ),
            Divider(
              height: 50,
            ),
            MaroButton(txt: 'Register',f: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            })
          ],
        ),
      ),
    );
  }
}





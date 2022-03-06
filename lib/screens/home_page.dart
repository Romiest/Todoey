
import 'package:flutter/material.dart';

import 'package:todoey/screens/landing_page.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 4),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LandingPage()),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
        image:AssetImage('images/pic.gif'),
            fit:BoxFit.cover
        ),
      ),

    );
  }
}

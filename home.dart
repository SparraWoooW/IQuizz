import 'package:flutter/material.dart';
import '/quiz1.dart';
import '/quiz2.dart';
import '/quiz3.dart';
import '/quiz4.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              color: Colors.red,
              child: TextButton(
                child: Text("one"),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Quiz1()));
                },
              )),
          Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              color: Colors.red,
              child: TextButton(
                child: Text("second"),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Quiz2()));
                },
              )),
          Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              color: Colors.red,
              child: TextButton(
                child: Text("third"),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Quiz3()));
                },
              )),
          Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              color: Colors.red,
              child: TextButton(
                child: Text("four"),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Quiz4()));
                },
              )),
        ],
      ),
    );
  }
}

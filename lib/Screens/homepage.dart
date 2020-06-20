import 'package:assignment/Screens/calendar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 9,
          child: Calendar()),
          Flexible(
            flex: 1,
            child: Text("Another of flexible"))
      ],
    );
  }
}
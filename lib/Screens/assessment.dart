import 'package:flutter/material.dart';

class Assessment extends StatefulWidget {
  @override
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(color: Colors.grey),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey[400],
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(8, 5), // changes position of shadow
        ),
      ],
    );
  }

  Widget _showList() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(5.0),
            decoration: myBoxDecoration(), //       <--- BoxDecoration here
            child: Column(
              children: <Widget>[
                Text(
                  "08.05 AM",
                  style: TextStyle(fontSize: 11.0),
                ),
                Text(
                  "30 min",
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.6,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(5.0),
              decoration: myBoxDecoration(), //       <--- BoxDecoration here
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Assinment 1 to do",
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Notes",
                          style: TextStyle(fontSize: 10.0, color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            "Free",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      "Group 1 live",
                      style: TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Card(
          child: Column(
            children: <Widget>[
              Text(
                "List Of Assignments",
                style: TextStyle(
                    height: 2,
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.red),
              ),
              _showList(),
              _showList(),
              _showList(),
              _showList(),
              _showList()
            ],
          ),
        ),
      ),
    );
  }
}

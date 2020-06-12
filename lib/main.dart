import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int Sele = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ASK ME ANYTHING",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          color: Colors.blue[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('images/ball$Sele.png'),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    Sele = Random().nextInt(5) + 1;
                  });
                },
                highlightColor: Colors.white,
                child: Text(
                  "CLICK",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                  ),
                ),
                color: Colors.blue[900],
              ),
              Text(
                "ASK A THING AND GET A ANSWER",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 3,
                  wordSpacing: 5,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

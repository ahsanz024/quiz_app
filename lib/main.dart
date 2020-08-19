import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = ['First Question', 'Second Question'];
  var _questionIndex = 0;

  void _onClick() {
    setState(() {
      _questionIndex++;
    });
    print("Button Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          // backgroundColor: Color.fromRGBO(r, g, b, opacity),
          body: Column(
            children: [
              Question(
                questions[_questionIndex],
              ),
              RaisedButton(
                onPressed: _onClick,
                child: Text("Text 1"),
              ),
              RaisedButton(
                onPressed: () => print("Text 2 Clicked"),
                child: Text("Text 2"),
              ),
              RaisedButton(
                onPressed: () => print("Text 3 Clicked"),
                child: Text("Text 3"),
              )
            ],
          )),
    );
  }
}

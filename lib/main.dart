import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';

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
  var _questionIndex = 0;

  void _onClick() {
    setState(() {
      _questionIndex++;
    });
    print("Button Clicked");
  }

  @override
  Widget build(BuildContext context) {
    // final List<String> questions = ['First Question', 'Second Question'];
    var questions = [
      {
        'question': 'What\' your fav color?',
        'answers': ['Green', 'Blue', 'Grey']
      },
      {
        'question': 'What\' your fav animal?',
        'answers': ['Dog', 'Cat', 'Fish', 'Turtle']
      },
      {
        'question': 'What\' your fav Movie?',
        'answers': ['Matrix', 'Valkyrie', 'Die Hard', 'Friends']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        // backgroundColor: Color.fromRGBO(r, g, b, opacity),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['question'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answer, _onClick);
            })
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

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
  var _totalScore = 0;

  void _onClick(int score) {
    print("score: $score");
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print("Button Clicked");
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
        'question': 'What\' your fav color?',
        'answers': [
          {'text': 'Green', 'value': 10},
          {'text': 'Blue', 'value': 5},
          {'text': 'Black', 'value': 1}
        ]
      },
      {
        'question': 'What\' your fav animal?',
        'answers': [
          {'text': 'Dog', 'value': 10},
          {'text': 'Cat', 'value': 5},
          {'text': 'Fish', 'value': 3},
          {'text': 'Turtle', 'value': 1},
        ]
      },
      {
        'question': 'What\' your fav Movie?',
        'answers': [
          {'text': 'Matrix', 'value': 10},
          {'text': 'Valkyrie', 'value': 5},
          {'text': 'Die Hard', 'value': 3},
          {'text': 'Friends', 'value': 1},
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        // backgroundColor: Color.fromRGBO(r, g, b, opacity),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                onClick: _onClick,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

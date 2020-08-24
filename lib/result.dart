import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultText {
    return "Your total score is ${this.totalScore}";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green[300],
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: this.resetQuiz,
            child: Text('Restart Quiz'),
            textColor: Colors.blueAccent,
            padding: EdgeInsets.all(120),
          )
        ],
      ),
    );
  }
}

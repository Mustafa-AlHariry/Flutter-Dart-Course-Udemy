import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Result extends StatelessWidget {
  int result = 0;
  final Function resetQuiz;
  Result(this.result, this.resetQuiz);
  String get resultPhase {
    var resultText = 'you did it';
    if (result <= 8) {
      resultText = 'bad';
    } else if (result <= 12) {
      resultText = 'good';
    } else {
      resultText = 'Excellent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
}

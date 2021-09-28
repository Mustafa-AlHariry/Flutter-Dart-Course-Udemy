import 'package:flutter/material.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

//we created state class bec it is important for storing your state so that
//when you question index changes and the external data passed into the widget
//itself changes, only that is rewritten, is rebuilt and our data here is not reset
class MainWindowStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainWindowState();
  }
}

// State<MainWindowStateful> => say that this state belongs to MainWindowStateful class
// "_" before class name => private class for file scope only
class _MainWindowState extends State<MainWindowStateful> {
  /*============== Data Members ==================*/
  // "_" before property name => private member for class
  //int _questionIndex = 0;
  // var _questions = ['what is ur fav color?'}, 'what is ur fav animal?'];
  int _questionIndex = 0;
  var _totalScore = 0;

  //list of maps
  static const _questions = const [
    {
      'questionText': 'what is ur fav color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Green', 'score': 0}
      ],
    },
    {
      'questionText': 'what is ur fav animal?',
      'answer': [
        {'text': 'lion', 'score': 10},
        {'text': 'tigger', 'score': 5},
        {'text': 'frog', 'score': 0}
      ],
    }
  ];

  // MaterialApp mainWidget;

  /*================= Methods ====================*/
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // setState a function takes a func as a parameter :)
    //used to change the data we want
    setState(() {
      //set state will recall build function
      _totalScore += score;
      _questionIndex++;
      // _questionIndex = _questionIndex % 2;
    });
    print('answer chosen!\n');
  }

  //override is a decore to make the code more clean
  // flutter will pass a value for context parameter while running
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          //Scaffold widget creates base page design with basic color and structure
          //divided into 2 main parts: 1)appBar
          //                           2)body
          // also has many parameters

          appBar: AppBar(
            title: Text('My First App'),
          ),

          //body takes only one widget
          //body: Text('This is my default text!'),
          body: _questionIndex < 2
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

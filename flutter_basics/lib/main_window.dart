import 'package:flutter/material.dart';

class MainWindow extends StatelessWidget {
  /*============== Data Members ==================*/

  int questionIndex = 0;
  var questions = ['what is ur fav color?', 'what is ur fav animal?'];
  MaterialApp mainWidget;

  /*================= Methods ====================*/

  void answerQuestion() {
    print('answer chosen!\n');
    questionIndex++;
  }

  //override is a decore to make the code more clean
  // flutter will pass a value for context parameter while running
  @override
  Widget build(BuildContext context) {
    return mainWidget;
  }

  MainWindow() {
    // MaterialApp is a widget that controls pixels
    mainWidget = MaterialApp(
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
        body: Column(
          //<widget>[] => list of widgets
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () {
                //anonymous function
                print('answer2 chosen!\n');
              },
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () {
                //anonymous function
                print('answer3 chosen!\n');
              },
            ),
          ],
        ),
      ),
    );
  }
}

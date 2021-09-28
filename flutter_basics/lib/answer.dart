import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function selectHandler;
  Container answerText;
  Answer(this.selectHandler, this.answer) {
    answerText = Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        //Colors is a class that have colors that are const static property so
        //we get this without instatiate the class
        color: Colors.blue,
        textColor: Colors.red,
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return answerText;
  }
}

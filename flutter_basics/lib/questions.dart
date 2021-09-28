import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final => the variabe will not change after the intaialization in constractor
  final String question;
  Container questionText;
  // int _questionIndex = 0;
  // var _questions = ['what is ur fav color?', 'what is ur fav animal?'];

  Question({this.question}) {
    // questionText = Container(
    //   //double.infinity => width = screen width
    //   width: double.infinity,
    //   // margin:EdgeInsets.only()
    //   margin: EdgeInsets.all(10),
    //   child: Text(
    //     question,
    //     style: TextStyle(fontSize: 28),
    //     textAlign: TextAlign.center,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //double.infinity => width = screen width
      width: double.infinity,
      // margin:EdgeInsets.only()
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

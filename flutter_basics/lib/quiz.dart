import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //<widget>[] => list of widgets
      children: [
        Question(
          question: questions[questionIndex]['questionText'],
        ),

        //what these ... do here is they take a list which is exactly what we have here and they pull all
        // values in the list out of it and add them to the surrounding list as individual values, so that we
        //don't add a list to a list
        //but the values of a list to a list, having only one list without a nested list.
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final Function giveAnswer;
  final int index;
  var question;

  Quiz({this.giveAnswer, this.index, this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[index]["question"]),
        ...(question[index]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => giveAnswer(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

import "package:flutter/material.dart";

class Result extends StatelessWidget {
  //const Result({ Key? key }) : super(key: key);
  final int score;
  final Function resetHandler;
  final int correct_ans;

  Result(this.score, this.resetHandler, this.correct_ans);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(height: 20),
        Text(
          "Your score is " + score.toString(),
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Your Total Correct Answers are:- " + score.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:Colors.lightGreen,
          ),
        ),
         SizedBox(height: 20),
        RaisedButton(
          child: Text("Restart Quiz"),
          color: Colors.orangeAccent,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}

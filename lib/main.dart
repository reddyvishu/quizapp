import 'package:flutter/material.dart';
import './rules.dart';
import "./getques.dart";
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<MyApp> {
  int _page = 0;
  int _index = 0;
  int _totalScore = 0;
  int _correctAns=0;
  int _wrongAns=0;

  List<Map<String, Object>> questions = Getques.getQuestion();
  void _gotoQuiz() {
    setState(() {
      _page += 1;
    });
  }

  void giveAnswer(int score) {
    if (_index < questions.length) {
      if(score==0)
      _wrongAns++;
      else 
      _correctAns++;

      _totalScore += score;
      setState(() {
        //flag = 1;
        _index += 1;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
      _page=0;
      _correctAns=0;
      _wrongAns=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to play Quiz"),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: _page == 0
            ? Column(
                children: [
                  Rules("1.There are 10 questions"),
                  Rules("2.All Questions are important"),
                  Rules("3.Each Question Carries one mark"),
                  Rules(
                      "4.After choosing the answer,the next question will be displayed"),
                  Rules("                 All the Best!!"),
                  RaisedButton(
                    color: Colors.orange,
                    child: Text(
                      "Play Quiz",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: _gotoQuiz,
                  )
                ],
              )
            : _index < questions.length
                ? Column(
                    children: [
                      Quiz(
                        giveAnswer: giveAnswer,
                        index: _index,
                        question: questions,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Correct: ${_correctAns}",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              "Wrong: ${_wrongAns}",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : Result(_totalScore, resetQuiz,_correctAns),
      ),
    );
  }
}

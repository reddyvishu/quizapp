import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String _question;
  Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20, bottom: 10,left:30),
      child: Text(
        _question,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

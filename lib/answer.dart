import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handleClick;
  final String answerText;
  Answer(this.handleClick, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: handleClick,
        color: Colors.blue.shade900,
        textColor: Colors.white,
        child: Text(answerText),
      ),
    );
  }
}

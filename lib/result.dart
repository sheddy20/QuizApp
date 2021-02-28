import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = "Welcome To Flutter.dev";
    } else if (resultScore <= 12) {
      resultText = "Try Flutter Today";
    } else if (resultScore <= 16) {
      resultText = "If You Dont Like Flutter Try SwiftUI";
    } else {
      resultText = "Declarative UI Programming Is The Future";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text("Reset Quiz"),
            textColor: Colors.black,
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}

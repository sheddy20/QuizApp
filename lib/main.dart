import 'package:QuizApp/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "Which Is A Declarative UI Framework",
      "answers": [
        {"text": "Flutter", "score": 1},
        {"text": "Android Studio", "score": 3},
        {"text": "UIKit", "score": 5},
        {"text": "Ionic", "score": 10},
      ],
    },
    {
      "questionText": "Which Is A No Code Tool",
      "answers": [
        {"text": "FlutterFlow", "score": 3},
        {"text": "ReactNative", "score": 11},
        {"text": "SwiftUi", "score": 5},
        {"text": "Flutter", "score": 9},
      ],
    },
    {
      "questionText": "What Is The Name Of The First Cryptocurrency",
      "answers": [
        {"text": "BitCoin", "score": 1},
        {"text": "Ethereum", "score": 1},
        {"text": "XRP", "score": 1},
        {"text": "Litecoin", "score": 1},
      ],
    },
  ];

  var _totalScore = 0;
  void _resetButton() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex++;
    });
    print(_questionsIndex);
    if (_questionsIndex < _questions.length) {
      print("We have more questions....");
    }
  }

  var _questionsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text("My First App"),
            centerTitle: true,
          ),
          body: _questionsIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestions,
                  questionIndex: _questionsIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetButton),
        ),
      ),
    );
  }
}

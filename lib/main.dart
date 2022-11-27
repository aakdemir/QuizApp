import "package:flutter/material.dart";

import 'package:quiz_app/quiz.dart';
import "package:quiz_app/result.dart";

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      "questionText": "What\'s your favorite color ?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ],
    },
    {
      "questionText": "What's your favorite animal ?",
      "answers": [
        {"text": "Cat", "score": 1},
        {"text": "Rabbit", "score": 3},
        {"text": "Dog", "score": 7},
        {"text": "Lion", "score": 10},
      ],
    },
    {
      "questionText": "Who\'s your favorite instructor ?",
      "answers": [
        {"text": "Max", "score": 1},
        {"text": "Hax", "score": 7},
        {"text": "Fax", "score": 5},
        {"text": "Tax", "score": 10},
      ],
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Questions"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}

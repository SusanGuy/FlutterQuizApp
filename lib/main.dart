import 'package:flutter/material.dart';
import "./quiz.dart";
import "./result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': "What's your favorite color?",
      'answers': [
        {"text": "Red", "score": 5},
        {"text": "Black", "score": 10},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1}
      ]
    },
    {
      'question': "What's your favorite animal?",
      'answers': [
        {"text": "Rabbit", "score": 1},
        {"text": "Snake", "score": 10},
        {"text": "Elephant", "score": 3},
        {"text": "Lion", "score": 5}
      ]
    },
    {
      'question': "Who's your favorite instructor?",
      'answers': [
        {"text": "Max", "score": 1},
        {"text": "Joey", "score": 10},
        {"text": "Andrew", "score": 1},
        {"text": "Charles", "score": 10}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

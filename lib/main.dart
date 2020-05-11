import 'package:flutter/material.dart';
import "./question.dart";
import "./answer.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: Column(children: [
          Question(questions[_questionIndex]),
          AnswerButton(_answerQuestions),
          AnswerButton(_answerQuestions),
          AnswerButton(_answerQuestions),
        ]),
      ),
    );
  }
}

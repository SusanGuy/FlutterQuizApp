import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = [
    "What's your facorite color?",
    "What's your favorite animal?"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text("Answer1"),
            onPressed: answerQuestions,
          ),
          RaisedButton(
            child: Text("Answer2"),
            onPressed: answerQuestions,
          ),
          RaisedButton(
            child: Text("Answer3"),
            onPressed: answerQuestions,
          ),
        ]),
      ),
    );
  }
}

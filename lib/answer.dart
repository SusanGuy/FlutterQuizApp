import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  AnswerButton(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(5),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

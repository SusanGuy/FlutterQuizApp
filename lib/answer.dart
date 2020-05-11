import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectHandler;
  AnswerButton(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(5),
        child: Text("Answer1"),
        onPressed: selectHandler,
      ),
    );
  }
}

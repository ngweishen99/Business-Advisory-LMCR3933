import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(top: 5),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.orange,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}

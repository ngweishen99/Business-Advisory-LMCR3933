import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 80) {
      resultText =
          'You are ready for start-up! Contact us if you are seeking for help \n';
      print(resultScore);
    } else if (resultScore >= 50) {
      resultText =
          'You are almost ready for starting up a business! Please contact us for further knowledge\n';
      print(resultScore);
    } else {
      resultText =
          'You are not ready for starting up a business! Please contact us for business advisory\n';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Score ' '$resultScore\n',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text

          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
            textAlign: TextAlign.center,
          ), //Text

          FlatButton(
            child: Text(
              'Restart Quiz!',
            ), //Text
            textColor: Colors.white,
            onPressed: resetHandler,
            color: Colors.deepOrange,
          ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}

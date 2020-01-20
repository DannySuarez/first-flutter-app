import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({this.resultScore, this.resetHandler});

  String get resultPhrase {
    var resultText = 'You Did it';
    if (resultScore <= 8) {
      resultText = 'You are awesome & wonderful';
    } else if (resultScore <=12) {
      resultText = 'You are cool & hip';
    } else if (resultScore <= 18) {
      resultText = 'killing it';
    } else {
      resultText = 'Coolest person ever';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            resultPhrase,
            style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'), onPressed: resetHandler,
          ),
        ]
        ),
    );
  }
}
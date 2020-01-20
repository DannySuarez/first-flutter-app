import 'package:flutter/material.dart';

class Question extends StatelessWidget {
 final String questoinText;

  Question(this.questoinText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10) ,
      child: Text(
      questoinText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),);
  }
}
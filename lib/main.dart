import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
      {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text':'Green', 'score': 3},
        {'text': 'White', 'score': 1}
        ],
       },
       {
       'questionText': 'What\'s your favorite animal?',
       'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 6}
        ],
       },
       {
      'questionText': 'What\'s your favorite City?',
      'answers': [
        {'text': 'Portland', 'score': 7},
        {'text': 'Oakland', 'score': 4},
        {'text': 'New York', 'score': 8},
        {'text': 'Paris', 'score': 1}
        ],
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

  void _answerQuestion(int score) {
    _totalScore += score;
  
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

   _questionIndex < _questions.length ? print('we have more Qs') : print('all done');
  
    // if(_questionIndex < questions.length) {
    //   print('we have more Qs');
    // }

  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: _questionIndex < _questions.length 
      ? Quiz(
        answerQuestion: _answerQuestion,
        questionIndex: _questionIndex,
        questions: _questions
        )
      : Result(
        resultScore:_totalScore,
        resetHandler: _resetQuiz),
    ),
  );
  }
}
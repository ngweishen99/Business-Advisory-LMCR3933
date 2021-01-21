import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

class Evaluation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EvaluationState();
  }
}

class _EvaluationState extends State<Evaluation> {
  final _questions = const [
    {
      'questionText': 'Q1. Do you know about primary competitors ?',
      'answers': [
        {'text': 'Yes', 'score': 20},
        {'text': 'A little', 'score': 10},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. How is the market responding to this industry?',
      'answers': [
        {'text': 'High Demand', 'score': 20},
        {'text': 'Low Demand', 'score': 10},
        {'text': 'Newly found', 'score': 0},
      ],
    },
    {
      'questionText': ' Q3. Do you know about ideal customer?',
      'answers': [
        {'text': 'Yes', 'score': 20},
        {'text': 'A little', 'score': 10},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Do you know about business marketing?',
      'answers': [
        {'text': 'Yes', 'score': 20},
        {'text': 'A little', 'score': 10},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Q5. Do you know about defining success on ur business?',
      'answers': [
        {'text': 'Yes', 'score': 20},
        {'text': 'A little', 'score': 10},
        {'text': 'No', 'score': 0},
      ],
    },
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
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Business Advisory'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}

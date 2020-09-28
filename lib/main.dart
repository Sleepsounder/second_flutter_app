import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite tea?',
      'answerText': [
        {'text': 'Oolong', 'score': 1},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Black', 'score': 3},
        {'text': 'Green', 'score': 4},
      ]
    },
    {
      'questionText': 'What is your favorite movie?',
      'answerText': [
        {'text': 'Up', 'score': 1},
        {'text': 'Downsizing', 'score': 2},
        {'text': 'Across The Universe', 'score': 3},
        {'text': 'The Overnight', 'score': 4},
      ]
    },
    {
      'questionText': 'What is Boones Farm?',
      'answerText': [
        {'text': 'Tea', 'score': 1},
        {'text': 'Vacation Home', 'score': 2},
        {'text': 'Awful liquor', 'score': 3},
        {'text': 'A School in NJ', 'score': 4},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore - 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() => _questionIndex = _questionIndex + 1);
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More questions!!!');
    } else {
      print('No more questions, yo.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gucci App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

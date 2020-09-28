import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What is your favorite tea?',
      'answerText': ['Oolong', 'Yellow', 'Black', 'Green', 'White']
    },
    {
      'questionText': 'What is your favorite movie?',
      'answerText': ['Up', 'Downsizing', 'Across The Universe', 'The Overnight']
    },
    {
      'questionText': 'What is Boones Farm?',
      'answerText': ['Tea', 'Vacation Home', 'Awful liquor', 'A School in NJ']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => _questionIndex = _questionIndex + 1);
    print(_questionIndex);
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answerText'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}

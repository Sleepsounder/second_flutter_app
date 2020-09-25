import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\s your tea?',
      'What\'s my dimsum?',
      'Corn tips',
      'Chicken strips'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gucci App'),
        ),
        body: Column(
          children: [
            Text('The Question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 3) {
      resultText = 'That\'s a low score, yo.';
    } else if (totalScore <= 6) {
      resultText = 'That score\'s a touch higher, yo.';
    } else if (totalScore <= 9) {
      resultText = 'That\'s a straight higher score there, bro.';
    } else {
      resultText = 'That score is straight high as heck.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

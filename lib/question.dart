import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;
  final int _questionNumber;
  Question(this._question, this._questionNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        '$_questionNumber - $_question',
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

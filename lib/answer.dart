import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _nextQuestion;
  final String answer;
  Answer(this._nextQuestion, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.brown[100],
                padding: const EdgeInsets.all(10),
                shadowColor: Colors.white,
              ),
              onPressed: _nextQuestion,
              child: Text(
                answer,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int _score;
  Result(this._score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "your score is $_score out of 3",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('reset the quiz'),
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(20),
                backgroundColor: MaterialStateProperty.all(Colors.red[50])),
          )
        ],
      ),
    );
  }
}

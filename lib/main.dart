import './result.dart';
import './quiz.dart';
import 'package:flutter/material.dart';
import './static_data.dart';

//to see how the pull request works
void main() {
  runApp(FirstWidget());
}

class FirstWidget extends StatefulWidget {
  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  int _qindex = 0;
  int _score = 0;

  void nextQuestion(String choosed) {
    if (_qindex + 1 <= questions.length) {
      setState(() {
        if ((questions[_qindex]['answer'] as String) == choosed) _score += 1;
        _qindex++;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      _qindex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.brown[100],
        accentColor: Colors.amber,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepOrange[100],
          appBar: AppBar(
            backgroundColor: Colors.brown[100],
            title: const Text('my new flutter app'),
          ),
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: _qindex < questions.length
                ? Quiz(qindex: _qindex, getNextQuestion: nextQuestion)
                : Result(_score, resetQuiz),
          ),
        ),
      ),
    );
  }
}

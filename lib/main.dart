import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(FirstWidget());
}

class FirstWidget extends StatefulWidget {
  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  final List _questions = [
    {
      'question': 'first question',
      'answers': ['q1 answer 1', 'q1 answer 2', 'q1 answer 3']
    },
    {
      'question': 'second question',
      'answers': ['q2 answer 1', 'q2 answer 2', 'q2 answer 3']
    },
    {
      'question': 'third question',
      'answers': ['q3 answer 1', 'q3 answer 2', 'q3 answer 3']
    }
  ];

  int _qindex = 0;

  void nextQuestion() {
    if (_qindex + 1 < _questions.length) {
      setState(() {
        _qindex++;
      });
    } else {
      setState(() {
        _qindex = 0;
      });
    }
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
            title: const Text('mynew flutter app'),
          ),
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Question(_questions[_qindex]['question'], _qindex + 1),
                SizedBox(
                  height: 20,
                ),
                ..._questions[_qindex]['answers'].map((answer) {
                  return Answer(nextQuestion, answer);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
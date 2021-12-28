import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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

  void nextQuestion() {
    if (_qindex + 1 < questions.length) {
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
                Question(questions[_qindex]['question'], _qindex + 1),
                SizedBox(
                  height: 20,
                ),
                ...questions[_qindex]['answers'].map((answer) {
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

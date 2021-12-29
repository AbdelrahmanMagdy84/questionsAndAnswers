import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'static_data.dart';

class Quiz extends StatelessWidget {
  late final int qindex;
  late final Function getNextQuestion;
  Quiz({required this.qindex, required this.getNextQuestion});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Question(questions[qindex]['question'], qindex + 1),
          const SizedBox(
            height: 20,
          ),
          ...(questions[qindex]['choises'] as List<String>).map((answer) {
            return Answer(() => getNextQuestion(answer), answer);
          }).toList()
        ],
      ),
    );
  }
}

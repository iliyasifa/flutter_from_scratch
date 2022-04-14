import 'package:flutter/material.dart';

import '../widgets/answer.dart';
import '../widgets/question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final int questionIndex;

  const Quiz(
      {Key? key, required this.answerQuestion, required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          child: Text(
            Questions.questions[questionIndex]['question'].toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ),
        ...(Questions.questions[questionIndex]['answer'] as List).map(
          (e) => Answer(
            selectHandler: answerQuestion,
            answerText: e,
          ),
        ),
      ],
    );
  }
}

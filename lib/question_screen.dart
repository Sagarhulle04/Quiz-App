import 'package:advance_basics/answer_button.dart';
import 'package:advance_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              currentQuestion.text,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answer: currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answer: currentQuestion.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            answer: currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answer: currentQuestion.answers[3],
            onTap: () {},
          )
        ],
      ),
    );
  }
}

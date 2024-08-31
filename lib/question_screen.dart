import 'package:advance_basics/answer_button.dart';
import 'package:advance_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswer().map(
              (e) {
                return AnswerButton(
                  answer: e,
                  onTap: () {
                    answerQuestion();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

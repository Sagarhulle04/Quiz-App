import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Opacity(
            opacity: 0.41,
            child: Image(
              height: 400,
              width: 400,
              image: AssetImage(
                "assets/images/headphone.jpeg",
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Let's Learn flutter in fun way",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFF5CADF0),
              foregroundColor: Colors.black,
            ),
            onPressed: () => {
              startQuiz(),
            },
            label: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Start Quiz",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}

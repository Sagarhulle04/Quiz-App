import 'package:advance_basics/next_page.dart';
import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    void Pressed() {
      print("Pressed");
    }

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
              fontSize: 28,
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
              const NextPage(),
            },
            label: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Start Quiz",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
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

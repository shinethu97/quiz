import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartPage extends StatelessWidget {
  StartPage({required this.changePage, super.key});

  void Function() changePage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          SizedBox(height: 16),
          Text(
            "Let Learn React Quiz",
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          SizedBox(height: 16),
          OutlinedButton.icon(
            icon: Icon(Icons.arrow_right_alt),
            onPressed: changePage,
            label: Text("Start"),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: Colors.white, width: 2),
              foregroundColor: const Color.fromARGB(255, 2, 6, 240),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answer_text, required this.onTap, super.key});
  String answer_text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          backgroundColor: Colors.purple,
        ),
        onPressed: onTap,
        child: Text(answer_text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

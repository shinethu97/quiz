import 'package:flutter/material.dart';
import 'package:quiz_pritices/data/question_data.dart';
import 'package:quiz_pritices/widgets/answer_component.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({required this.selectedAnswer, super.key});

  final Function(String answer) selectedAnswer;
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var currentIndex = 0;
  var selectedAnswer = [];

  void changeQuestion(String answer) {
    widget.selectedAnswer(answer);
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentIndex].question,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            ...questions[currentIndex].sheffullList.map(
              (answer) => AnswerButton(
                onTap: () {
                  changeQuestion(answer);
                },
                answer_text: answer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

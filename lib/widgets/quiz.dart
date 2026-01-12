import 'package:flutter/material.dart';
import 'package:quiz_pritices/data/question_data.dart';
import 'package:quiz_pritices/widgets/question.dart';
import 'package:quiz_pritices/widgets/result.dart';
import 'package:quiz_pritices/widgets/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var mainContent = "start";
  List<String> selectedAnswers = [];

  void changePageFun() {
    setState(() {
      mainContent = "question";
    });
  }

  void selectedAnswer(String answer) {
    selectedAnswers.add(answer);
    if (questions.length == selectedAnswers.length) {
      setState(() {
        mainContent = "result";
      });
    }
  }

  void reStart() {
    selectedAnswers = [];
    setState(() {
      mainContent = "start";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget changeWidget = StartPage(changePage: changePageFun);

    if (mainContent == "start") {
      changeWidget = StartPage(changePage: changePageFun);
    } else if (mainContent == "question") {
      changeWidget = QuestionPage(selectedAnswer: selectedAnswer);
    } else {
      changeWidget = ResultPage(
        reStart: reStart,
        chooseAnswer: selectedAnswers,
      );
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, const Color.fromARGB(255, 78, 247, 230)],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          ),
        ),
        child: Center(child: changeWidget),
      ),
    );
  }
}

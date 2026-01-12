import 'package:flutter/material.dart';
import 'package:quiz_pritices/data/question_data.dart';
import 'package:quiz_pritices/widgets/result_list.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.chooseAnswer, required this.reStart, super.key});

  final Function() reStart;
  List<Map<String, Object>> get SummaryData {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        "question-index": i,
        "question": questions[i].question,
        "choose_answer": chooseAnswer[i],
        "correct_answer": questions[i].answers[0],
      });
    }
    return summary;
  }

  List<String> chooseAnswer;

  @override
  Widget build(BuildContext context) {
    var correct_number = SummaryData.where(
      (summary) => summary["choose_answer"] == summary["correct_answer"],
    ).length;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "You answered $correct_number out of ${questions.length} questions correctly",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 8),
          Expanded(child: ResultList(data: SummaryData)),
          SizedBox(height: 80),
          ElevatedButton(onPressed: reStart, child: Text("Restart")),
        ],
      ),
    );
  }
}

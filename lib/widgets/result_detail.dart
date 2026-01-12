import 'package:flutter/material.dart';

class ResultDetail extends StatelessWidget {
  ResultDetail({required this.data, super.key});

  Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    print(data["question"]);
    var index = data["question-index"] as int;
    return Row(
      children: [
        Text('${index + 1}'),
        Column(
          children: [
            Text(data["question"] as String),
            Text(data["choose_answer"] as String),
            Text(data["correct_answer"] as String),
          ],
        ),
      ],
    );
  }
}

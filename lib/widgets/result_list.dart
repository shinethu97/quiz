import 'package:flutter/material.dart';
import 'package:quiz_pritices/widgets/result_detail.dart';

class ResultList extends StatelessWidget {
  ResultList({required this.data, super.key});

  List<Map<String, Object>> data;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) =>
          Expanded(child: ResultDetail(data: data[index])),
    );
  }
}

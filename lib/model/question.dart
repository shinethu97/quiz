class QuizQuestion {
  List<String> answers;
  String question;
  QuizQuestion(this.question, this.answers);

  List<String> get sheffullList {
    var copyList = List.of(answers);
    copyList.shuffle();
    return copyList;
  }
}

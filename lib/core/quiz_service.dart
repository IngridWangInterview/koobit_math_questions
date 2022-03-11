import 'dart:math';

import '../utils/logger.dart';
import 'models/answer/answer.dart';
import 'models/question/question.dart';
import 'models/user_answer/user_answer.dart';
import 'package:function_tree/function_tree.dart';

// fake data
const maxQuestionCount = 10;

final List<int> questionIds = () {
  const maxQuestionId = 1009168;
  final rng = Random();
  final List<int> ids = [];
  for (int i = 0; i < maxQuestionCount; i += 1) {
    ids.add(rng.nextInt(maxQuestionId));
  }
  return ids;
}();

final Map<int, Question> idAndQuestions = () {
  final rng = Random();
  const List<String> operators = ['+', '-', '*'];
  const maxDifficulty = 5;
  const int maxNumber = 100;
  final Map<int, Question> questions = {};
  for (int i = 0; i < maxQuestionCount; i += 1) {
    final id = questionIds.elementAt(i);
    questions.addAll({
      id: Question(
        id: id,
        question: '${rng.nextInt(maxNumber)} ${operators.elementAt(
          rng.nextInt(operators.length),
        )} ${rng.nextInt(maxNumber)}',
        difficulty: rng.nextInt(maxDifficulty),
      )
    });
  }
  return questions;
}();

final Map<int, String> questionIdAndAnswer = () {
  final Map<int, String> idAndAnswers = {};
  final questions = idAndQuestions.values.toList();
  for (int i = 0; i < questions.length; i += 1) {
    final q = questions.elementAt(i);
    final answer = q.question.interpret().toInt();
    idAndAnswers.addAll({q.id: answer.toString()});
  }
  return idAndAnswers;
}();

List<Answer> getAnswerFromServer({required List<UserAnswer> usrAnswers}) {
  List<Answer> answers = [];
  for (int i = 0; i < usrAnswers.length; i += 1) {
    final usrAnswer = usrAnswers[i];
    final question = idAndQuestions[usrAnswer.id];
    if (question == null) {
      throw Exception(
          'idAndQuestions can not found question id = ${usrAnswer.id}');
    }
    final answer = questionIdAndAnswer[usrAnswer.id];
    if (answer == null) {
      throw Exception(
          'idAndQuestions can not found answer id = ${usrAnswer.id}');
    }

    final correct = int.parse(answer) == int.parse(usrAnswer.answer);
    answers.add(Answer(
      correct: correct,
      question: idAndQuestions[usrAnswer.id]!,
      userAnswer: usrAnswer.answer,
      answer: answer,
    ));
  }

  return answers;
}

class QuizService {
  static final QuizService _inst = QuizService._internal();

  factory QuizService() {
    return _inst;
  }

  QuizService._internal();

  Future<List<Question>> getQuestions() async {
    // Get get fake Questions
    await Future.delayed(const Duration(seconds: 5),
        () => Logger.v('QuizService, Successfully Get Questions'));

    return idAndQuestions.values.toList();
  }

  Future<List<Answer>> submitQuestions(
      {required List<UserAnswer> usrAnswers}) async {
    // Get Fake Answers
    await Future.delayed(const Duration(seconds: 5),
        () => Logger.v('QuizService, Successfully Submit Questions'));

    return getAnswerFromServer(usrAnswers: usrAnswers);
  }
}

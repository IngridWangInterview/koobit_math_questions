import 'package:freezed_annotation/freezed_annotation.dart';

import '../question/question.dart';

part 'answer.freezed.dart';

part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  factory Answer({
    required Question question,
    required String userAnswer,
    required bool correct,
    required String answer,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

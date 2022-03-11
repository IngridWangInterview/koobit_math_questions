import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/answer/answer.dart';
import '../../../core/models/question/question.dart';
import '../../../core/models/user_answer/user_answer.dart';
import '../models/answer_text_field.dart';

part 'question_state.freezed.dart';

enum QuestionStatus {
  initial,
  loadingQuestions,
  loadQuestionsSuccess,
  loadQuestionsFailed,
  summiting,
  summitSuccess,
  summitFailed,
  result,
}

@freezed
class QuestionState with _$QuestionState {
  const QuestionState._();

  factory QuestionState({
    required List<Question> questions,
    required List<UserAnswer> usrAnswers,
    required List<Answer> answers,
    required int currentQuestionIndex,
    required QuestionStatus status,
    @Default(FormzStatus.pure) FormzStatus answerTextFieldStatus,
    @Default(AnswerTextField.pure()) AnswerTextField usrAnswer,
    required int difficulty,
  }) = _QuestionState;

  Question getCurrentQuestion() {
    return questions.elementAt(currentQuestionIndex);
  }

  UserAnswer? getCurrentUsrAnswer() {
    if (usrAnswers.length - 1 < currentQuestionIndex) {
      return null;
    }
    return usrAnswers.elementAt(currentQuestionIndex);
  }
}

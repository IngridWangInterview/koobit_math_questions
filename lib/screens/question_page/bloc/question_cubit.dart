import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:koobit_math_questions/core/quiz_service.dart';
import 'package:koobit_math_questions/screens/question_page/bloc/question_state.dart';

import '../../../core/models/user_answer/user_answer.dart';
import '../../../utils/logger.dart';
import '../models/answer_text_field.dart';

class QuestionCubit extends Cubit<QuestionState> {
  final QuizService _service;

  QuestionCubit(this._service)
      : super(QuestionState(
          status: QuestionStatus.initial,
          questions: [],
          usrAnswers: [],
          answers: [],
          difficulty: 0,
          currentQuestionIndex: 0,
        ));

  void answerChanged(String value) {
    final usrAnswer = AnswerTextField.dirty(value);
    emit(
      state.copyWith(
        usrAnswer: usrAnswer,
        answerTextFieldStatus: Formz.validate([usrAnswer]),
      ),
    );
  }

  Future<void> getQuestions() async {
    Logger.v('QuestionCubit, start loading questions');
    emit(state.copyWith(status: QuestionStatus.loadingQuestions));
    try {
      // using fake Questions, no need to define other error types, here only shows SocketException.
      final questions = await _service.getQuestions();
      emit(state.copyWith(
        status: QuestionStatus.loadQuestionsSuccess,
        questions: questions,
      ));
    } on SocketException catch (e, s) {
      Logger.e('QuestionCubit, loading questions error!Network problem!', e, s);
      emit(state.copyWith(status: QuestionStatus.summitFailed));
    } catch (e, s) {
      Logger.e('QuestionCubit, loading questions error!Unknown Error', e, s);
      emit(state.copyWith(status: QuestionStatus.summitFailed));
    }
  }

  void previousQuestions() {
    if (state.usrAnswers.length > state.currentQuestionIndex) {
      state.usrAnswers.removeLast();
    }
    final p = state.currentQuestionIndex - 1;
    final newState = state.copyWith(currentQuestionIndex: p);
    final answer = newState.getCurrentUsrAnswer()!.answer;
    emit(state.copyWith(
      currentQuestionIndex: p,
      usrAnswer: AnswerTextField.dirty(answer),
    ));
  }

  void nextQuestion() {
    if (state.usrAnswers.length > state.currentQuestionIndex ||
        (state.usrAnswers.isNotEmpty && state.currentQuestionIndex == 0)) {
      state.usrAnswers.removeLast();
    }
    final next = state.currentQuestionIndex + 1;
    final userAnswer = List<UserAnswer>.from(state.usrAnswers);
    userAnswer.add(UserAnswer(
      id: state.getCurrentQuestion().id,
      answer: state.usrAnswer.value,
    ));

    emit(state.copyWith(
      currentQuestionIndex: next,
      usrAnswers: userAnswer,
      usrAnswer: const AnswerTextField.pure(),
    ));
  }

  Future<void> summitQuestions() async {
    emit(state.copyWith(status: QuestionStatus.summiting));
    try {
      // using fake Answers, no need to define other error types, here only shows SocketException.
      state.usrAnswers.add(UserAnswer(
        id: state.getCurrentQuestion().id,
        answer: state.usrAnswer.value,
      ));
      final answers =
          await _service.submitQuestions(usrAnswers: state.usrAnswers);
      emit(state.copyWith(
        status: QuestionStatus.result,
        answers: answers,
      ));
    } on SocketException catch (e, s) {
      Logger.e('QuestionCubit, summit questions error!Network problem!', e, s);
      emit(state.copyWith(status: QuestionStatus.summitFailed));
    } catch (e, s) {
      Logger.e('QuestionCubit, summit questions error!Unknown Error', e, s);
      emit(state.copyWith(status: QuestionStatus.summitFailed));
    }
  }

  void restart() {
    emit(QuestionState(
      status: QuestionStatus.initial,
      questions: [],
      usrAnswers: [],
      answers: [],
      difficulty: 0,
      currentQuestionIndex: 0,
    ));
  }
}

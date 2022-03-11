// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionStateTearOff {
  const _$QuestionStateTearOff();

  _QuestionState call(
      {required List<Question> questions,
      required List<UserAnswer> usrAnswers,
      required List<Answer> answers,
      required int currentQuestionIndex,
      required QuestionStatus status,
      FormzStatus answerTextFieldStatus = FormzStatus.pure,
      AnswerTextField usrAnswer = const AnswerTextField.pure(),
      required int difficulty}) {
    return _QuestionState(
      questions: questions,
      usrAnswers: usrAnswers,
      answers: answers,
      currentQuestionIndex: currentQuestionIndex,
      status: status,
      answerTextFieldStatus: answerTextFieldStatus,
      usrAnswer: usrAnswer,
      difficulty: difficulty,
    );
  }
}

/// @nodoc
const $QuestionState = _$QuestionStateTearOff();

/// @nodoc
mixin _$QuestionState {
  List<Question> get questions => throw _privateConstructorUsedError;
  List<UserAnswer> get usrAnswers => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;
  int get currentQuestionIndex => throw _privateConstructorUsedError;
  QuestionStatus get status => throw _privateConstructorUsedError;
  FormzStatus get answerTextFieldStatus => throw _privateConstructorUsedError;
  AnswerTextField get usrAnswer => throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
  $Res call(
      {List<Question> questions,
      List<UserAnswer> usrAnswers,
      List<Answer> answers,
      int currentQuestionIndex,
      QuestionStatus status,
      FormzStatus answerTextFieldStatus,
      AnswerTextField usrAnswer,
      int difficulty});
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;

  @override
  $Res call({
    Object? questions = freezed,
    Object? usrAnswers = freezed,
    Object? answers = freezed,
    Object? currentQuestionIndex = freezed,
    Object? status = freezed,
    Object? answerTextFieldStatus = freezed,
    Object? usrAnswer = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(_value.copyWith(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      usrAnswers: usrAnswers == freezed
          ? _value.usrAnswers
          : usrAnswers // ignore: cast_nullable_to_non_nullable
              as List<UserAnswer>,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      currentQuestionIndex: currentQuestionIndex == freezed
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionStatus,
      answerTextFieldStatus: answerTextFieldStatus == freezed
          ? _value.answerTextFieldStatus
          : answerTextFieldStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      usrAnswer: usrAnswer == freezed
          ? _value.usrAnswer
          : usrAnswer // ignore: cast_nullable_to_non_nullable
              as AnswerTextField,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$QuestionStateCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$QuestionStateCopyWith(
          _QuestionState value, $Res Function(_QuestionState) then) =
      __$QuestionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Question> questions,
      List<UserAnswer> usrAnswers,
      List<Answer> answers,
      int currentQuestionIndex,
      QuestionStatus status,
      FormzStatus answerTextFieldStatus,
      AnswerTextField usrAnswer,
      int difficulty});
}

/// @nodoc
class __$QuestionStateCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$QuestionStateCopyWith<$Res> {
  __$QuestionStateCopyWithImpl(
      _QuestionState _value, $Res Function(_QuestionState) _then)
      : super(_value, (v) => _then(v as _QuestionState));

  @override
  _QuestionState get _value => super._value as _QuestionState;

  @override
  $Res call({
    Object? questions = freezed,
    Object? usrAnswers = freezed,
    Object? answers = freezed,
    Object? currentQuestionIndex = freezed,
    Object? status = freezed,
    Object? answerTextFieldStatus = freezed,
    Object? usrAnswer = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(_QuestionState(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      usrAnswers: usrAnswers == freezed
          ? _value.usrAnswers
          : usrAnswers // ignore: cast_nullable_to_non_nullable
              as List<UserAnswer>,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      currentQuestionIndex: currentQuestionIndex == freezed
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionStatus,
      answerTextFieldStatus: answerTextFieldStatus == freezed
          ? _value.answerTextFieldStatus
          : answerTextFieldStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      usrAnswer: usrAnswer == freezed
          ? _value.usrAnswer
          : usrAnswer // ignore: cast_nullable_to_non_nullable
              as AnswerTextField,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuestionState extends _QuestionState {
  _$_QuestionState(
      {required this.questions,
      required this.usrAnswers,
      required this.answers,
      required this.currentQuestionIndex,
      required this.status,
      this.answerTextFieldStatus = FormzStatus.pure,
      this.usrAnswer = const AnswerTextField.pure(),
      required this.difficulty})
      : super._();

  @override
  final List<Question> questions;
  @override
  final List<UserAnswer> usrAnswers;
  @override
  final List<Answer> answers;
  @override
  final int currentQuestionIndex;
  @override
  final QuestionStatus status;
  @JsonKey()
  @override
  final FormzStatus answerTextFieldStatus;
  @JsonKey()
  @override
  final AnswerTextField usrAnswer;
  @override
  final int difficulty;

  @override
  String toString() {
    return 'QuestionState(questions: $questions, usrAnswers: $usrAnswers, answers: $answers, currentQuestionIndex: $currentQuestionIndex, status: $status, answerTextFieldStatus: $answerTextFieldStatus, usrAnswer: $usrAnswer, difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionState &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            const DeepCollectionEquality()
                .equals(other.usrAnswers, usrAnswers) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
            const DeepCollectionEquality()
                .equals(other.currentQuestionIndex, currentQuestionIndex) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.answerTextFieldStatus, answerTextFieldStatus) &&
            const DeepCollectionEquality().equals(other.usrAnswer, usrAnswer) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questions),
      const DeepCollectionEquality().hash(usrAnswers),
      const DeepCollectionEquality().hash(answers),
      const DeepCollectionEquality().hash(currentQuestionIndex),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(answerTextFieldStatus),
      const DeepCollectionEquality().hash(usrAnswer),
      const DeepCollectionEquality().hash(difficulty));

  @JsonKey(ignore: true)
  @override
  _$QuestionStateCopyWith<_QuestionState> get copyWith =>
      __$QuestionStateCopyWithImpl<_QuestionState>(this, _$identity);
}

abstract class _QuestionState extends QuestionState {
  factory _QuestionState(
      {required List<Question> questions,
      required List<UserAnswer> usrAnswers,
      required List<Answer> answers,
      required int currentQuestionIndex,
      required QuestionStatus status,
      FormzStatus answerTextFieldStatus,
      AnswerTextField usrAnswer,
      required int difficulty}) = _$_QuestionState;
  _QuestionState._() : super._();

  @override
  List<Question> get questions;
  @override
  List<UserAnswer> get usrAnswers;
  @override
  List<Answer> get answers;
  @override
  int get currentQuestionIndex;
  @override
  QuestionStatus get status;
  @override
  FormzStatus get answerTextFieldStatus;
  @override
  AnswerTextField get usrAnswer;
  @override
  int get difficulty;
  @override
  @JsonKey(ignore: true)
  _$QuestionStateCopyWith<_QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

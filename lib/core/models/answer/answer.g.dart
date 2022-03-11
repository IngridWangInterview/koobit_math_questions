// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      question: Question.fromJson(json['question'] as Map<String, dynamic>),
      userAnswer: json['userAnswer'] as String,
      correct: json['correct'] as bool,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'question': instance.question,
      'userAnswer': instance.userAnswer,
      'correct': instance.correct,
      'answer': instance.answer,
    };

import 'package:formz/formz.dart';

enum AnswerValidationError { invalid }

class AnswerTextField extends FormzInput<String, AnswerValidationError> {
  const AnswerTextField.pure() : super.pure('');

  const AnswerTextField.dirty([String value = '']) : super.dirty(value);

  @override
  AnswerValidationError? validator(String? value) {
    return value != null && value.isNotEmpty
        ? null
        : AnswerValidationError.invalid;
  }
}

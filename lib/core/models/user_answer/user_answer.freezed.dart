// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAnswer _$UserAnswerFromJson(Map<String, dynamic> json) {
  return _UserAnswer.fromJson(json);
}

/// @nodoc
class _$UserAnswerTearOff {
  const _$UserAnswerTearOff();

  _UserAnswer call({required int id, required String answer}) {
    return _UserAnswer(
      id: id,
      answer: answer,
    );
  }

  UserAnswer fromJson(Map<String, Object?> json) {
    return UserAnswer.fromJson(json);
  }
}

/// @nodoc
const $UserAnswer = _$UserAnswerTearOff();

/// @nodoc
mixin _$UserAnswer {
  int get id => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAnswerCopyWith<UserAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnswerCopyWith<$Res> {
  factory $UserAnswerCopyWith(
          UserAnswer value, $Res Function(UserAnswer) then) =
      _$UserAnswerCopyWithImpl<$Res>;
  $Res call({int id, String answer});
}

/// @nodoc
class _$UserAnswerCopyWithImpl<$Res> implements $UserAnswerCopyWith<$Res> {
  _$UserAnswerCopyWithImpl(this._value, this._then);

  final UserAnswer _value;
  // ignore: unused_field
  final $Res Function(UserAnswer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserAnswerCopyWith<$Res> implements $UserAnswerCopyWith<$Res> {
  factory _$UserAnswerCopyWith(
          _UserAnswer value, $Res Function(_UserAnswer) then) =
      __$UserAnswerCopyWithImpl<$Res>;
  @override
  $Res call({int id, String answer});
}

/// @nodoc
class __$UserAnswerCopyWithImpl<$Res> extends _$UserAnswerCopyWithImpl<$Res>
    implements _$UserAnswerCopyWith<$Res> {
  __$UserAnswerCopyWithImpl(
      _UserAnswer _value, $Res Function(_UserAnswer) _then)
      : super(_value, (v) => _then(v as _UserAnswer));

  @override
  _UserAnswer get _value => super._value as _UserAnswer;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_UserAnswer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAnswer implements _UserAnswer {
  _$_UserAnswer({required this.id, required this.answer});

  factory _$_UserAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_UserAnswerFromJson(json);

  @override
  final int id;
  @override
  final String answer;

  @override
  String toString() {
    return 'UserAnswer(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAnswer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$UserAnswerCopyWith<_UserAnswer> get copyWith =>
      __$UserAnswerCopyWithImpl<_UserAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAnswerToJson(this);
  }
}

abstract class _UserAnswer implements UserAnswer {
  factory _UserAnswer({required int id, required String answer}) =
      _$_UserAnswer;

  factory _UserAnswer.fromJson(Map<String, dynamic> json) =
      _$_UserAnswer.fromJson;

  @override
  int get id;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$UserAnswerCopyWith<_UserAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

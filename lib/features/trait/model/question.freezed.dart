// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionTearOff {
  const _$QuestionTearOff();

  _Question call(
      {required String text,
      required List<Choice> choices,
      required List<int> introvertAnswers,
      required List<int> extrovertAnswers,
      Choice? selectedAnswer}) {
    return _Question(
      text: text,
      choices: choices,
      introvertAnswers: introvertAnswers,
      extrovertAnswers: extrovertAnswers,
      selectedAnswer: selectedAnswer,
    );
  }
}

/// @nodoc
const $Question = _$QuestionTearOff();

/// @nodoc
mixin _$Question {
  String get text => throw _privateConstructorUsedError;
  List<Choice> get choices => throw _privateConstructorUsedError;
  List<int> get introvertAnswers => throw _privateConstructorUsedError;
  List<int> get extrovertAnswers => throw _privateConstructorUsedError;
  Choice? get selectedAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {String text,
      List<Choice> choices,
      List<int> introvertAnswers,
      List<int> extrovertAnswers,
      Choice? selectedAnswer});

  $ChoiceCopyWith<$Res>? get selectedAnswer;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? choices = freezed,
    Object? introvertAnswers = freezed,
    Object? extrovertAnswers = freezed,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      choices: choices == freezed
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      introvertAnswers: introvertAnswers == freezed
          ? _value.introvertAnswers
          : introvertAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      extrovertAnswers: extrovertAnswers == freezed
          ? _value.extrovertAnswers
          : extrovertAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as Choice?,
    ));
  }

  @override
  $ChoiceCopyWith<$Res>? get selectedAnswer {
    if (_value.selectedAnswer == null) {
      return null;
    }

    return $ChoiceCopyWith<$Res>(_value.selectedAnswer!, (value) {
      return _then(_value.copyWith(selectedAnswer: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) then) =
      __$QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      List<Choice> choices,
      List<int> introvertAnswers,
      List<int> extrovertAnswers,
      Choice? selectedAnswer});

  @override
  $ChoiceCopyWith<$Res>? get selectedAnswer;
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(_Question _value, $Res Function(_Question) _then)
      : super(_value, (v) => _then(v as _Question));

  @override
  _Question get _value => super._value as _Question;

  @override
  $Res call({
    Object? text = freezed,
    Object? choices = freezed,
    Object? introvertAnswers = freezed,
    Object? extrovertAnswers = freezed,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_Question(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      choices: choices == freezed
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      introvertAnswers: introvertAnswers == freezed
          ? _value.introvertAnswers
          : introvertAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      extrovertAnswers: extrovertAnswers == freezed
          ? _value.extrovertAnswers
          : extrovertAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as Choice?,
    ));
  }
}

/// @nodoc

class _$_Question implements _Question {
  const _$_Question(
      {required this.text,
      required this.choices,
      required this.introvertAnswers,
      required this.extrovertAnswers,
      this.selectedAnswer});

  @override
  final String text;
  @override
  final List<Choice> choices;
  @override
  final List<int> introvertAnswers;
  @override
  final List<int> extrovertAnswers;
  @override
  final Choice? selectedAnswer;

  @override
  String toString() {
    return 'Question(text: $text, choices: $choices, introvertAnswers: $introvertAnswers, extrovertAnswers: $extrovertAnswers, selectedAnswer: $selectedAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Question &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.choices, choices) &&
            const DeepCollectionEquality()
                .equals(other.introvertAnswers, introvertAnswers) &&
            const DeepCollectionEquality()
                .equals(other.extrovertAnswers, extrovertAnswers) &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswer, selectedAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(choices),
      const DeepCollectionEquality().hash(introvertAnswers),
      const DeepCollectionEquality().hash(extrovertAnswers),
      const DeepCollectionEquality().hash(selectedAnswer));

  @JsonKey(ignore: true)
  @override
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);
}

abstract class _Question implements Question {
  const factory _Question(
      {required String text,
      required List<Choice> choices,
      required List<int> introvertAnswers,
      required List<int> extrovertAnswers,
      Choice? selectedAnswer}) = _$_Question;

  @override
  String get text;
  @override
  List<Choice> get choices;
  @override
  List<int> get introvertAnswers;
  @override
  List<int> get extrovertAnswers;
  @override
  Choice? get selectedAnswer;
  @override
  @JsonKey(ignore: true)
  _$QuestionCopyWith<_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

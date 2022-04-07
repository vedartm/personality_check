import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String text,
    required List<Choice> choices,
    required List<int> introvertAnswers,
    required List<int> extrovertAnswers,
    Choice? selectedAnswer,
  }) = _Question;

  factory Question.fromMap(dynamic map) => Question(
        text: map['question'],
        choices: List<Choice>.generate(
          map['choices'].length,
          (index) => Choice(position: index + 1, text: map['choices'][index]),
        ),
        introvertAnswers: map['introvert'],
        extrovertAnswers: map['extrovert'],
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';

@freezed
class Choice with _$Choice {
  const factory Choice({
    required int position,
    required String text,
  }) = _Choice;
}

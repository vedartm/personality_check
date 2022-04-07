part of 'questions_cubit.dart';

@freezed
class QuestionsState with _$QuestionsState {
  const factory QuestionsState.loading() = _Initial;

  const factory QuestionsState.failed(Failure failure) = _Failed;

  const factory QuestionsState.success({
    required List<Question> questions,
    required int currentPage,
  }) = _Success;
}

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failures.dart';
import '../../../model/choice.dart';
import '../../../model/question.dart';
import '../../../model/result.dart';
import '../../../repo/i_trait_repo.dart';

part 'questions_cubit.freezed.dart';
part 'questions_state.dart';

@injectable
class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit(this._repo) : super(const QuestionsState.loading());

  final ITraitRepo _repo;

  void fetchQuestions() async {
    final result = await _repo.getQuestions();
    result.fold(
      (l) => emit(QuestionsState.failed(l)),
      (r) => emit(QuestionsState.success(questions: r, currentPage: 0)),
    );
  }

  void onAnswerChanged(Question question, Choice answer) {
    state.maybeMap(
      orElse: () => null,
      success: (s) {
        final questions = List<Question>.from(s.questions);
        final index = questions.indexOf(question);
        questions[index] = question.copyWith(selectedAnswer: answer);
        emit(s.copyWith(questions: questions));
      },
    );
  }

  Future<Either<Failure, Result>> submitAnswers() async {
    final questions = state.maybeMap(
      orElse: () => <Question>[],
      success: (s) => List<Question>.from(s.questions),
    );
    emit(const QuestionsState.loading());
    final result = await _repo.submitAnswers(questions);
    return result;
  }

  void onPageChanged(int page) {
    state.maybeMap(
      orElse: () => null,
      success: (s) {
        if (page >= 0 && page < s.questions.length) {
          emit(s.copyWith(currentPage: page));
        }
      },
    );
  }

  void nextPage() {
    state.maybeMap(
      orElse: () => null,
      success: (s) => onPageChanged(s.currentPage + 1),
    );
  }

  void previousPage() {
    state.maybeMap(
      orElse: () => null,
      success: (s) => onPageChanged(s.currentPage - 1),
    );
  }
}

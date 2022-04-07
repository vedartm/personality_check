import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../model/question.dart';
import '../model/result.dart';

abstract class ITraitRepo {
  Future<Either<Failure, List<Question>>> getQuestions();

  Future<Either<Failure, Result>> submitAnswers(List<Question> questions);
}

import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personality_check/features/trait/model/choice.dart';

import '../../../core/error/failures.dart';
import '../model/question.dart';
import '../model/result.dart';
import 'i_trait_repo.dart';

@LazySingleton(as: ITraitRepo)
class TraitRepo implements ITraitRepo {
  @override
  Future<Either<Failure, List<Question>>> getQuestions() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final result = _getQuestionsFromAPI();
    final questions = result.map((e) => Question.fromMap(e)).toList();
    return Right(questions);
  }

  @override
  Future<Either<Failure, Result>> submitAnswers(
      List<Question> questions) async {
    await Future.delayed(const Duration(milliseconds: 500));
    var introvertScore = 0;
    var extrovertScore = 0;
    for (var question in questions) {
      if (question.introvertAnswers
          .contains(question.selectedAnswer?.position)) {
        introvertScore += 1;
      } else if (question.extrovertAnswers
          .contains(question.selectedAnswer?.position)) {
        extrovertScore += 1;
      }
    }

    final result = introvertScore > extrovertScore
        ? const Result(text: 'Introvert')
        : const Result(text: 'Extrovert');
    return Right(result);
  }

  List<Map<String, dynamic>> _getQuestionsFromAPI() => [
        {
          'question':
              'You’re really busy at work and a colleague is telling you their life story and personal woes. You:',
          'choices': [
            'Don’t dare to interrupt them',
            'Think it’s more important to give them some of your time; work can wait',
            'Listen, but with only with half an ear',
            'Interrupt and explain that you are really busy at the moment',
          ],
          'introvert': [1, 2],
          'extrovert': [3, 4],
        },
        {
          'question':
              'You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You: ',
          'choices': [
            'Look at your watch every two minutes',
            'Bubble with inner anger, but keep quiet ',
            'Explain to other equally impatient people in the room that the doctor is always running late ',
            'Complain in a loud voice, while tapping your foot impatiently ',
          ],
          'introvert': [1, 2],
          'extrovert': [3, 4],
        },
        {
          'question':
              'You’re having an animated discussion with a colleague regarding a project that you’re in charge of. You:',
          'choices': [
            'Don’t dare contradict them',
            'Think that they are obviously right',
            'Defend your own point of view, tooth and nail',
            'Continuously interrupt your colleague',
          ],
          'introvert': [1, 2],
          'extrovert': [3, 4],
        },
        {
          'question': 'You are taking part in a guided tour of a museum. You:',
          'choices': [
            'Are a bit too far towards the back so don’t really hear what the guide is saying',
            'Follow the group without question',
            'Make sure that everyone is able to hear properly',
            'Are right up the front, adding your own comments in a loud voice',
          ],
          'introvert': [1, 2],
          'extrovert': [3, 4],
        },
        {
          'question':
              'During dinner parties at your home, you have a hard time with people who:',
          'choices': [
            'Ask you to tell a story in front of everyone else',
            'Talk privately between themselves',
            'Hang around you all evening',
            'Always drag the conversation back to themselves',
          ],
          'introvert': [1, 2],
          'extrovert': [3, 4],
        },
      ];
}

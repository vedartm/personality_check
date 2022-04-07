import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personality_check/core/ui/dimens.dart';
import 'package:personality_check/core/ui/spacers.dart';
import 'package:personality_check/features/trait/model/question.dart';
import 'package:personality_check/features/trait/ui/widgets/choice_card.dart';

import '../cubits/questions/questions_cubit.dart';

class QuestionSection extends StatelessWidget {
  const QuestionSection({Key? key, required this.question}) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(PDimens.padding),
      children: [
        Text(
          question.text,
          style: Theme.of(context).textTheme.headline6,
        ),
        PSpacers.height32,
        ...question.choices.map<Widget>(
          (choice) => ChoiceCard(
            choice: choice,
            onTap: () => context
                .read<QuestionsCubit>()
                .onAnswerChanged(question, choice),
            isSelected: question.selectedAnswer == choice,
          ),
        )
      ],
    );
  }
}

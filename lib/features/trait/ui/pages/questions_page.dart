import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personality_check/core/injection/injection.dart';
import 'package:personality_check/core/ui/dimens.dart';
import 'package:personality_check/core/ui/spacers.dart';
import 'package:personality_check/features/trait/ui/cubits/questions/questions_cubit.dart';
import 'package:personality_check/features/trait/ui/pages/result_page.dart';

import '../widgets/question_section.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(initialPage: 0);
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<QuestionsCubit>(
          create: (context) => getIt()..fetchQuestions(),
          child: BlocConsumer<QuestionsCubit, QuestionsState>(
            listenWhen: (previous, current) =>
                _getCurrentPage(current) != _getCurrentPage(previous),
            listener: (context, state) => state.maybeMap(
              orElse: () => null,
              success: (s) => _pageController.animateToPage(
                s.currentPage,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              ),
            ),
            builder: (context, state) => state.map(
              loading: (v) => const Center(
                child: CircularProgressIndicator(),
              ),
              failed: (s) => const Center(
                child: Text('Sorry! Some error occurred'),
              ),
              success: (s) => Column(
                children: [
                  PSpacers.height20,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PDimens.padding,
                    ),
                    child: SizedBox(
                      height: PDimens.padding,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(PDimens.borderRadius),
                        child: LinearProgressIndicator(
                          value: s.currentPage / s.questions.length,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemBuilder: (context, index) =>
                          QuestionSection(question: s.questions[index]),
                    ),
                  ),
                  Row(
                    children: [
                      PSpacers.width20,
                      if (s.currentPage != 0)
                        OutlinedButton(
                          child: const Text('Previous'),
                          onPressed: () =>
                              context.read<QuestionsCubit>().previousPage(),
                        ),
                      const Spacer(),
                      if (s.currentPage != s.questions.length - 1)
                        ElevatedButton(
                          child: const Text('Next'),
                          onPressed: () =>
                              s.questions[s.currentPage].selectedAnswer != null
                                  ? context.read<QuestionsCubit>().nextPage()
                                  : ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Please select an answer before moving to the next question'),
                                      ),
                                    ),
                        ),
                      if (s.currentPage == s.questions.length - 1)
                        ElevatedButton(
                          child: const Text('Done'),
                          onPressed: () async {
                            final result = await context
                                .read<QuestionsCubit>()
                                .submitAnswers();
                            result.fold(
                              (l) => ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Sorry! Some error occurred.'),
                                ),
                              ),
                              (r) => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultPage(result: r),
                                ),
                              ),
                            );
                          },
                        ),
                      PSpacers.width20,
                    ],
                  ),
                  PSpacers.height20,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  int? _getCurrentPage(QuestionsState state) => state.maybeMap(
        orElse: () => 0,
        success: (s) => s.currentPage,
      );
}

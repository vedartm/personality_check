import 'package:flutter/material.dart';
import 'package:personality_check/core/ui/spacers.dart';
import 'package:personality_check/features/trait/model/result.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.result,
  }) : super(key: key);

  final Result result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/${result.text.toLowerCase()}.png',
              height: 300,
            ),
          ),
          PSpacers.height32,
          Text(
            'Congratulations🎉 You are an',
            style: Theme.of(context).textTheme.headline6,
          ),
          PSpacers.height4,
          Text(
            result.text,
            style: Theme.of(context).textTheme.headline5,
          ),
          PSpacers.height20,
          ElevatedButton(
            child: const Text('Try again?'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

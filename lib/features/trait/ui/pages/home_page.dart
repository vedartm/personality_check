import 'package:flutter/material.dart';

import 'questions_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Get started'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QuestionsPage()),
          ),
        ),
      ),
    );
  }
}

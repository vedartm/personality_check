import 'package:flutter/material.dart';

import 'core/ui/themes.dart';
import 'features/trait/ui/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personality Check',
      theme: PThemes.dayTheme,
      home: const HomePage(),
    );
  }
}

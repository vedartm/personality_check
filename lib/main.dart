import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'core/injection/injection.dart';

void main() {
  configureDependencies(Environment.prod);
  runApp(const MyApp());
}

import 'package:flutter/material.dart';
import 'package:quiz_game/view/quiz_page/quiz_page.dart';

import 'view/main_menu/main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz Game',
        theme: ThemeData.dark(),
        home: const QuizPage());
  }
}

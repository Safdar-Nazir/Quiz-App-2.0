// import 'package:app_with_flutter2/frontend/screens/homepage.dart';
// import 'package:app_with_flutter2/frontend/screens/login/loginScreen.dart';
import 'package:flutter/material.dart';

import 'frontend/screens/quizScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}

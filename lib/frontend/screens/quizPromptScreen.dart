import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:flutter/material.dart';

class QuizPromtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz Prompt Screen',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Quiz Prompt Screen',
            style: TextStyle(
              fontSize: getScreenHeight(16),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

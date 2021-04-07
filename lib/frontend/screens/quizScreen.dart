import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz Screen',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Quiz Screen',
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

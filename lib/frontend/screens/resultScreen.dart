import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:app_with_flutter2/frontend/widgets/resultCard.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const String id = 'resultpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Center(
          child: Text(
            'Results',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getScreenWidth(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.86,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.78,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

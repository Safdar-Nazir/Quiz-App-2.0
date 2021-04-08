import 'package:app_with_flutter2/config/constants.dart';
import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:app_with_flutter2/frontend/widgets/optionCard.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text(
          'Quiz Screen',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getScreenHeight(20),
              ),
              Text(
                '12/15',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: getScreenHeight(16),
                ),
              ),
              SizedBox(
                height: getScreenHeight(10),
              ),
              Text(
                'Question',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: getScreenHeight(30),
                ),
              ),
              SizedBox(
                height: getScreenHeight(25),
              ),
              Text(
                'The glow will disappear by changing the ListView\'s physics property to',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: getScreenHeight(16),
                ),
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              OptionCard(),
              SizedBox(
                height: getScreenHeight(15),
              ),
              OptionCard(),
              SizedBox(
                height: getScreenHeight(15),
              ),
              OptionCard(),
              SizedBox(
                height: getScreenHeight(15),
              ),
              OptionCard(),
            ],
          ),
        ),
      ),
    );
  }
}

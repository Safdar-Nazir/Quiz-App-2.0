import 'package:app_with_flutter2/config/constants.dart';
import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:app_with_flutter2/frontend/widgets/optionCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> options = ['First', 'Second', 'Third', 'Fourth'];
  int selectedIndex = 0;
  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
              // ),
              // OptionCard(),
              // SizedBox(
              //   height: getScreenHeight(15),
              // ),
              // OptionCard(),
              // SizedBox(
              //   height: getScreenHeight(15),
              // ),
              // OptionCard(),
              // SizedBox(
              //   height: getScreenHeight(15),
              // ),
              // OptionCard(),
              customRadioButton(
                options[0],
                1,
              ),
              SizedBox(
                height: getScreenHeight(
                  20,
                ),
              ),
              customRadioButton(
                options[1],
                2,
              ),
              SizedBox(
                height: getScreenHeight(
                  20,
                ),
              ),
              customRadioButton(
                options[2],
                3,
              ),
              SizedBox(
                height: getScreenHeight(
                  20,
                ),
              ),
              customRadioButton(
                options[3],
                4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customRadioButton(
    String text,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeIndex(index);
        });
      },
      child: Container(
        width: double.infinity,
        height: getScreenHeight(60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: selectedIndex == index ? Colors.green : Colors.black12,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenHeight(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: selectedIndex == index ? Colors.white : Colors.black54,
                  fontSize: 16,
                ),
              ),
              Icon(
                // FontAwesomeIcons.circle,
                selectedIndex == index
                    ? FontAwesomeIcons.solidCheckCircle
                    : FontAwesomeIcons.circle,
                color: selectedIndex == index ? Colors.white : Colors.black54,
                size: getScreenHeight(22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

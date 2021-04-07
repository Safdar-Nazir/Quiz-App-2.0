import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getScreenWidth(60),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quizaholic',
                  style: TextStyle(
                    fontSize: getScreenHeight(28),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                  ),
                ),
                Spacer(),
                Container(
                  height: getScreenHeight(65),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Spacer(),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: getScreenHeight(15),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

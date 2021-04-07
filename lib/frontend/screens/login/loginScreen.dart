import 'package:app_with_flutter2/config/constants.dart';
import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              horizontal: getScreenWidth(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  size: getScreenHeight(90),
                  color: kPrimaryColor,
                ),
                SizedBox(
                  height: getScreenHeight(20),
                ),
                Text(
                  'Quizaholic',
                  style: TextStyle(
                    fontSize: getScreenHeight(28),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                    color: kPrimaryColor,
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            height: 1,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kPrimaryColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: getScreenWidth(14),
                            vertical: getScreenHeight(16),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getScreenHeight(20),
                      ),
                    ],
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

import 'package:app_with_flutter2/config/constants.dart';
import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.transparent;
      }
      return Colors.red;
    }

    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getScreenWidth(40),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo_quiz.png',
                      height: getScreenHeight(180),
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Name',
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
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
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
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Password',
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
                        ],
                      ),
                    ),
                    // SizedBox(height: getScreenHeight(20)),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     GestureDetector(
                    //       child: Text(
                    //         'Forgot Password?',
                    //         style: TextStyle(
                    //           color: Colors.blue,
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    SizedBox(height: getScreenHeight(30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: getScreenHeight(55),
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: kPrimaryColor,
                              width: 1,
                            ),
                          ),
                          child: TextButton(
                            style: ButtonStyle(
                              enableFeedback: false,
                              overlayColor:
                                  MaterialStateProperty.resolveWith(getColor),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: getScreenHeight(16),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getScreenHeight(55),
                          width: MediaQuery.of(context).size.width * 0.30,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onLongPress: () {},
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: getScreenHeight(16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
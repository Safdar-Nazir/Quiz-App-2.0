import 'package:app_with_flutter2/frontend/screens/homeScreen.dart';
import 'package:app_with_flutter2/frontend/screens/homepage.dart';
import 'package:app_with_flutter2/frontend/screens/login/loginScreen.dart';
import 'package:app_with_flutter2/frontend/screens/register/registerScreen.dart';
import 'package:app_with_flutter2/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  static const id = 'wrapper';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    // return LoginScreen();

    if (user == null) {
      return LoginScreen();
    } else {
      return Homepage();
    }
  }
}

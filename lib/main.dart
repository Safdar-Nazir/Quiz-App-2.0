// import 'package:app_with_flutter2/frontend/screens/homepage.dart';
import 'package:app_with_flutter2/frontend/screens/homepage.dart';
import 'package:app_with_flutter2/frontend/screens/login/loginScreen.dart';
import 'package:app_with_flutter2/frontend/screens/wrapper.dart';
import 'package:app_with_flutter2/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'frontend/screens/quizScreen.dart';
import 'frontend/screens/register/registerScreen.dart';
import 'models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Wrapper.id,
        routes: {
          Wrapper.id: (context) => Wrapper(),
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) => RegisterScreen(),
          Homepage.id: (context) => Homepage(),
        },
      ),
    );
  }
}

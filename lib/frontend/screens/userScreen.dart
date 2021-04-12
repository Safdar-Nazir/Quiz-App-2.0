import 'package:app_with_flutter2/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alert/flutter_alert.dart';

class UserScreen extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpeg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Michael Dell',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () async {
                    showAlert(
                      context: context,
                      title: "Log out?",
                      body: "Are you sure to log out?",
                      actions: [
                        AlertAction(
                          text: "Log out",
                          isDestructiveAction: true,
                          onPressed: () async {
                            await _auth.signOut();
                          },
                        ),
                      ],
                      cancelable: true,
                    );
                  },
                  child: Text(
                    'Logout',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

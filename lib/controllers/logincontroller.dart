import 'package:flutter/material.dart';
import 'parsedata.dart';
import '../views/homeview.dart';
import '../models/user.dart';
import '../style/styles.dart';

class LoginController {
  static TextEditingController _emailController;
  static TextEditingController _passwordController;
  static bool _incorrectEmailPassword = false;

  static get emailController => _emailController;

  static get passwordController => _passwordController;

  static getLogoUrl() => logoImageAddress;

  static void cancelButtonPressed() {
    _clearInputFields();
  }

  static void _clearInputFields() {
    _emailController.clear();
    _passwordController.clear();
  }

  static BorderSide fieldBorderSide() {
    return BorderSide(color: Colors.red);
  }

  static void submitButtonPressed(BuildContext context) {
    if (validateUser(_emailController.text, ParseData.hashFn(_passwordController.text))) {
      _incorrectEmailPassword = false;
      Navigator.of(context).push( 
        MaterialPageRoute(
          builder: (context) => HomePage()
        )
      );
    } else {
      _incorrectEmailPassword = true;
      // _clearInputFields();
    }
  }

  static bool validateUser(String userEmail, String password) {
    List<User> users = ParseData.parseUsersList();
    int n = users.length;
    for(int i = 0; i < n; ++i) {
      if(users[i].getUserEmail() == userEmail && users[i].getHashedPassword() == password) {
        ParseData.currentUser = users[i];
        return true;
      }
    }
    return false;
  }
}
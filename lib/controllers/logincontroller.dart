import 'package:flutter/material.dart';
import 'package:gpa_app/controllers/parsedata.dart';
import 'package:gpa_app/views/homeview.dart';
import 'package:gpa_app/models/user.dart';
import 'package:gpa_app/style/styles.dart';
import 'package:gpa_app/providers/usermodel.dart';
import 'package:provider/provider.dart';
import 'package:gpa_app/mocks/mock_data.dart';

class LoginController {
  static bool _incorrectEmailPassword = false;

//  static get emailController => emailController;
//
//  static get passwordController => passwordController;

  static getLogoUrl() => logoImageAddress;

//  static void cancelButtonPressed(TextEditingController emailController, TextEditingController passwordController) {
//  static void _clearInputFields(TextEditingController emailController, TextEditingController passwordController) {
//    emailController.clear();
//    passwordController.clear();
//  }

  static BorderSide fieldBorderSide() {
    return BorderSide(color: Colors.red);
  }

  static void submitButtonPressed(BuildContext context, TextEditingController emailController, TextEditingController passwordController) {
    if (validateUser(emailController.text, ParseData.hashFn(passwordController.text), context)) {
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

  static bool validateUser(String userEmail, String password, BuildContext context) {
    // List<User> users = ParseData.parseUsersList();
    // int n = users.length;
    // for(int i = 0; i < n; ++i) {
    //   if(users[i].getUserEmail() == userEmail && users[i].getHashedPassword() == password) {
        Provider.of<UserModel>(context, listen: false).whichUser(mock.fetchAny());
        return true;
    //   }
    // }
    // return false;
  }
}
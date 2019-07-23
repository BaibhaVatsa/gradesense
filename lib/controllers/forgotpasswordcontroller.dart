import 'package:flutter/material.dart';
import 'parsedata.dart';
import '../views/editpasswordview.dart';

class ForgotPasswordController {

  static bool _incorrectEmailSecurityAnswer = false;
  static TextEditingController _securityQuestionController;
  static TextEditingController _emailController;

  static get securityQuestionController => _securityQuestionController;

  static get emailController => _emailController;

  static BorderSide fieldBorderSide() => _incorrectEmailSecurityAnswer ? BorderSide(color: Colors.red) : BorderSide();

  static String getSecurityQuestion() { 
    int index = ParseData.currentUser.getSecurityQuestion();
    return ParseData.securityQuestions[index];
  }
  static void cancelButtonPressed() {
    _clearInputFields();
  }

  static void _clearInputFields() {
    _emailController.clear();
    _securityQuestionController.clear();
  }

  static void submitButtonPressed(BuildContext context) {
    if (validateUser(_emailController.text, ParseData.hashFn(_securityQuestionController.text))) {
      _incorrectEmailSecurityAnswer = false;
      Navigator.of(context).push( 
        MaterialPageRoute(
          builder: (context) => EditPasswordPage()
        )
      );
    } else {
      _incorrectEmailSecurityAnswer = true;
      // _clearInputFields();
    }
  }

  static bool validateUser(String userEmail, String securityQuestion) {
    if (ParseData.currentUser.getUserEmail() == userEmail && ParseData.currentUser.getSecurityQuestionAnswer() == securityQuestion) {
      return true;
    }
    return false;
  }
}
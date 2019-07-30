import 'package:gpa_app/views/profileview.dart';
import 'package:gpa_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:gpa_app/views/semestersview.dart';

class HomePageController {
  static String appBarTitle() => "GradeSense";

  static User _user = null;

  static void welcomeMessageClicked(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => ProfilePage()
        )
    );
  }

  static void gpaOverallClicked(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => SemesterPage()
        )
    );
  }

  static setUser(User usr) => _user = usr;

  static String getUserImageUrl() => _user.getUserImageUrl();

  static String getUserName() => _user.getUserName();

  static String welcomeMessage() => "Welcome ${getUserName()}!";

  static String getUserOverallGpa() =>  _user.getGpaReceived().toString();

  static String getUserCurrentSemGpa() => _user.getSemester(0).getGpaReceived().toString();
}
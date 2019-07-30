import '../models/user.dart';
import '../models/semester.dart';
import 'package:flutter/material.dart';
import 'package:gpa_app/views/coursesview.dart';

class SemestersController {

  SemestersController(User usr) {
    this._user = usr;
    this._semesters = this._user.getSemesters();
  }

  List<Semester> _semesters;
  User _user;

  int get numSemesters => this._semesters.length;

  String semesterText(int i) {
    Semester thisSem = this._semesters[i];
    String str = thisSem.getSemesterName() + "\t" + thisSem.getGpaReceived().toString() + "/" + thisSem.getMaxGpa().toString();
    for(int i = 0; i < thisSem.getCourses().length; ++i) {
//      var thisCourse = thisSem.getCourse(i);
//      str += "\n" + thisCourse.getCourseName() + "\t" + thisCourse.getNumberOfCredits().toString() + "\t" + thisCourse.getScoreReceived().toString() + "/" + thisCourse.getMaxScore().toString();
    }
    return str + "\n";
  }

  void semesterClicked(int i, BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => CoursesPage(semesterIndex: i)
        )
    );
  }

//  setSemesters(List<Semester> semesters) {
//    this._semesters = semesters;
//  }

//  setUser(User usr) => this._semesters = usr;

  String getUserImageUrl() => this._user.getUserImageUrl();

  String getUserName() => this._user.getUserName();

  String getUserOverallGpa() =>  this._user.getGpaReceived().toString();
}
import 'package:flutter/material.dart';

import 'course.dart';

class Semester {
  double _maxGpa;
  double _gpaReceived;
  double _numberOfCredits;
  String _semesterName;
  List<Course> _courses;

  Semester({maxGpa = 4.0, gpaReceived = 0.0, numberOfCredits = 0.0, @required semesterName, @required courses}) {
    setCourses(courses);
    setMaxGpa(maxGpa);
    if (numberOfCredits == 0.0 && gpaReceived == 0.0) {
      updateGpa();
    } else {
      setGpaReceived(gpaReceived);
      setNumberOfCredits(numberOfCredits);
    }
    setSemesterName(semesterName);
  }

  double getMaxGpa() => this._maxGpa;

  double getGpaReceived() => this._gpaReceived;

  double getNumberOfCredits() => this._numberOfCredits;

  String getSemesterName() => this._semesterName;

  List<Course> getCourses() => this._courses;

  void setMaxGpa(double maxGpa) => this._maxGpa = maxGpa;

  void setGpaReceived(double gpaReceived) => this._gpaReceived = gpaReceived;

  void setNumberOfCredits(double numberOfCredits) => this._numberOfCredits = numberOfCredits;

  void setSemesterName(String semesterName) => this._semesterName = semesterName;

  void setCourses(List<Course> courses) => this._courses = courses;

  void updateGpa() {
    List<Course> courses = getCourses();
    int numberOfCourses = courses.length;
    double updatedNumberOfCredits = 0.0, updatedGpaReceived = 0.0;
    
    for (int i = 0; i < numberOfCourses; ++i) {
      Course courseAtI = courses[i];
      courseAtI.updateGrade();
      double numberOfCreditsThisCourse = courseAtI.getNumberOfCredits();
      updatedNumberOfCredits += numberOfCreditsThisCourse;
      updatedGpaReceived += numberOfCreditsThisCourse*courseAtI.getGrade();
    }

    updatedGpaReceived /= updatedNumberOfCredits;
    updatedGpaReceived *= getMaxGpa();

    if (updatedGpaReceived != getGpaReceived()) {
      setGpaReceived(updatedGpaReceived);
    }

    if (updatedNumberOfCredits != getNumberOfCredits()) {
      setNumberOfCredits(updatedNumberOfCredits);
    }
  }
}
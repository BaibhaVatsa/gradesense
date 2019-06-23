import 'package:flutter/material.dart';
import 'semester.dart';

class User {
  double _maxGpa;
  double _gpaReceived;
  double _numberOfCredits;
  String _userName;
  String _userEmail;
  String _hashedPassword;
  String _userImageUrl;
  List<Semester> _semesters;

  User({maxGpa = 4.0, gpaReceived = 0, numberOfCredits = 0, @required userName, @required userEmail, @required hashedPassword, userImageUrl, @required semesters}) {
    setMaxGpa(maxGpa);
    if (numberOfCredits == 0 && gpaReceived == 0) {
      updateGpa();
    } else {
      setGpaReceived(gpaReceived);
      setNumberOfCredits(numberOfCredits);
    }
    setUserName(userName);
    setUserEmail(userEmail);
    setHashedPassword(hashedPassword);
    if (userImageUrl == null) {
      setUserImageUrl(userImageUrl);
    }
    setSemesters(semesters);
  }

  double getMaxGpa() {
    return this._maxGpa;
  }

  double getGpaReceived() {
    return this._gpaReceived;
  }

  double getNumberOfCredits() {
    return this._numberOfCredits;
  }

  String getUserName() {
    return this._userName;
  }

  String getUserEmail() {
    return this._userEmail;
  }

  String getHashedPassword() {
    return this._hashedPassword;
  } 

  String getUserImageUrl() {
    return this._userImageUrl;
  }

  List<Semester> getSemesters() {
    return this._semesters;
  }

  void setMaxGpa(double maxGpa) {
    this._maxGpa = maxGpa;
  } 

  void setGpaReceived(double gpaReceived) {
    this._gpaReceived = gpaReceived;
  }

  void setNumberOfCredits(double numberOfCredits) {
    this._numberOfCredits = numberOfCredits;
  }

  void setUserName(String userName) {
    this._userName = userName;
  }

  void setUserEmail(String userEmail) {
    this._userEmail = userEmail;
  }

  void setHashedPassword(String hashedPassword) {
    this._hashedPassword = hashedPassword;
  }

  void setUserImageUrl(String userImageUrl) {
    this._userImageUrl = userImageUrl;
  }

  void setSemesters(List<Semester> semesters) {
    this._semesters = semesters;
  }

  void updateGpa() {
    List<Semester> semesters = getSemesters();
    int numberOfSemesters = semesters.length;
    double updatedNumberOfCredits = 0, updatedGpaReceived = 0;
    
    for (int i = 0; i < numberOfSemesters; ++i) {
      Semester semesterAtI = semesters[i];
      semesterAtI.updateGpa();
      double numberOfCreditsThisSemester = semesterAtI.getNumberOfCredits();
      updatedNumberOfCredits += numberOfCreditsThisSemester;
      updatedGpaReceived += numberOfCreditsThisSemester*semesterAtI.getGpaReceived();
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
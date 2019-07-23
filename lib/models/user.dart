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
  int _securityQuestion;
  String _securityQuestionAnswer;
  List<Semester> _semesters;

  User({maxGpa = 4.0, gpaReceived = 0, numberOfCredits = 0, @required securityQuestion, @required securityQuestionAnswer, @required userName, @required userEmail, @required hashedPassword, userImageUrl = "", @required semesters}) {
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
    if (userImageUrl != "") {
      setUserImageUrl(userImageUrl);
    }
    setSecurityQuestion(securityQuestion);
    setSecurityQuestionAnswer(securityQuestionAnswer);
    setSemesters(semesters);
  }

  int getSecurityQuestion() => this._securityQuestion;

  String getSecurityQuestionAnswer() => this._securityQuestionAnswer;

  double getMaxGpa() => this._maxGpa;

  double getGpaReceived() => this._gpaReceived;

  double getNumberOfCredits() => this._numberOfCredits;

  String getUserName() => this._userName;

  String getUserEmail() => this._userEmail;

  String getHashedPassword() => this._hashedPassword;

  String getUserImageUrl() => this._userImageUrl;

  List<Semester> getSemesters() => this._semesters;

  Semester getSemester(int index) => this._semesters[index];

  void setSecurityQuestion(int securityQuestion) => this._securityQuestion = securityQuestion;

  void setSecurityQuestionAnswer(String securityQuestionAnswer) => this._securityQuestionAnswer = securityQuestionAnswer;

  void setMaxGpa(double maxGpa) => this._maxGpa = maxGpa;

  void setGpaReceived(double gpaReceived) => this._gpaReceived = gpaReceived;

  void setNumberOfCredits(double numberOfCredits) => this._numberOfCredits = numberOfCredits;

  void setUserName(String userName) => this._userName = userName;

  void setUserEmail(String userEmail) => this._userEmail = userEmail;

  void setHashedPassword(String hashedPassword) => this._hashedPassword = hashedPassword;

  void setUserImageUrl(String userImageUrl) => this._userImageUrl = userImageUrl;

  void setSemesters(List<Semester> semesters) => this._semesters = semesters;

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
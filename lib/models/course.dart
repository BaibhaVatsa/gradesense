import 'package:flutter/material.dart';
import 'assignmentgroup.dart';

class Course {
  double _maxScore;
  double _scoreReceived;
  double _numberOfCredits;
  double _grade;
  String _courseName;
  List<AssignmentGroup> _assignmentGroups;

  Course({maxScore = 0, scoreReceived = 0, grade = 0, @required numberOfCredits, @required courseName, @required assignmentGroups}) {
    if (scoreReceived == 0 && maxScore == 0) {
      updateGrade();
    } else {
      setMaxScore(maxScore);
      setScoreReceived(scoreReceived);
    }
    if (grade != 0) {
      setGrade(grade);
    }
    setNumberOfCredits(numberOfCredits);
    setCourseName(courseName);
    setAssignmentGroups(assignmentGroups);
  }

  double getMaxScore() {
    return this._maxScore;
  }

  double getScoreReceived() {
    return this._scoreReceived;
  }

  double getNumberOfCredits() {
    return this._numberOfCredits;
  }

  String getCourseName() {
    return this._courseName;
  }

  List<AssignmentGroup> getAssignmentGroups() {
    return this._assignmentGroups;
  }

  double getGrade() {
    return this._grade;
  }
 
  void setMaxScore(double maxScore) {
    this._maxScore = maxScore;
  }

  void setScoreReceived(double scoreReceived) {
    this._scoreReceived = scoreReceived;
  }

  void setNumberOfCredits(double numberOfCredits) {
    this._numberOfCredits = numberOfCredits;
  }

  void setCourseName(String courseName) {
    this._courseName = courseName;
  }

  void setAssignmentGroups(List<AssignmentGroup> assignmentGroups) {
    this._assignmentGroups = assignmentGroups;
  }

  void setGrade([double grade]) {
    if(grade != null) {
      this._grade = grade;
    } else {
      if (getMaxScore() == 0) {
        this._grade = 0;
      } else {
        // TODO 
        //    copy grade scale
        double percentageScore = (getScoreReceived() / getMaxScore()) * 100;
        if (percentageScore >= 93) {
          this._grade = 4.0;
        } else if (percentageScore >= 90) {
          this._grade = 3.7;
        } else {
          this._grade = 3.0;
        }
      }
    }
  }

  // TODO
  //    add weightage

  void updateGrade() {
    List<AssignmentGroup> assignmentGroups = getAssignmentGroups();
    int numberOfAssignmentGroups = assignmentGroups.length;
    double updatedScoreReceived = 0, updatedMaxScore = 0;
    
    for (int i = 0; i < numberOfAssignmentGroups; ++i) {
      AssignmentGroup assignmentGroupAtI = assignmentGroups[i];
      assignmentGroupAtI.updateScores();
      double weightageThisAssignmentGroup = assignmentGroupAtI.getWeightage();
      updatedMaxScore += weightageThisAssignmentGroup*assignmentGroupAtI.getMaxScore();
      updatedScoreReceived += weightageThisAssignmentGroup*assignmentGroupAtI.getScoreReceived();
    }

    if (updatedScoreReceived != getScoreReceived()) {
      setScoreReceived(updatedScoreReceived);
    }

    if (updatedMaxScore != getMaxScore()) {
      setMaxScore(updatedMaxScore);
    }

    setGrade();
  }
}
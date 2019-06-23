import 'package:flutter/material.dart';

import 'assignment.dart';

class AssignmentGroup {
  double _maxScore;
  double _scoreReceived;
  double _weightage;
  String _assignmentGroupName;
  List<Assignment> _assignments;

  AssignmentGroup({maxScore = 0, scoreReceived = 0, @required assignmentGroupName, @required assignments, weightage = 1}) {
    if (scoreReceived == 0 && maxScore == 0) {
      updateScores();
    } else {
      setMaxScore(maxScore);
    }
    setScoreReceived(scoreReceived);
    setAssignmentGroupName(assignmentGroupName);
    setAssignments(assignments);
    setWeightage(weightage);
  }

  double getWeightage() {
    return this._weightage;
  }

  double getMaxScore() {
    return this._maxScore;
  }

  double getScoreReceived() {
    return this._scoreReceived;
  }

  String getAssignmentGroupName() {
    return this._assignmentGroupName;
  }

  List<Assignment> getAssignments() {
    return this._assignments;
  }

  void setWeightage(double weightage) {
    this._weightage = weightage;
  }

  void setMaxScore(double maxScore) {
    this._maxScore = maxScore;
  }

  void setScoreReceived(double scoreReceived) {
    this._scoreReceived = scoreReceived;
  }

  void setAssignmentGroupName(String assignmentGroupName) {
    this._assignmentGroupName = assignmentGroupName;
  }

  void setAssignments(List<Assignment> assignments) {
    this._assignments = assignments;
  }

  // TODO
  //    Add weightage

  void updateScores() {
    List<Assignment> assignments = getAssignments();
    int numberOfAssignments = assignments.length;
    double updatedScoreReceived = 0, updatedMaxScore = 0;
    
    for (int i = 0; i < numberOfAssignments; ++i) {
      Assignment assignmentAtI = assignments[i];
      double weightageThisAssignment = assignmentAtI.getWeightage();
      updatedMaxScore += weightageThisAssignment*assignmentAtI.getMaxScore();
      updatedScoreReceived += weightageThisAssignment*assignmentAtI.getScoreReceived();
    }

    if (updatedScoreReceived != getScoreReceived()) {
      setScoreReceived(updatedScoreReceived);
    }

    if (updatedMaxScore != getMaxScore()) {
      setMaxScore(updatedMaxScore);
    }
  }

}
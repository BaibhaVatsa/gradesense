import 'package:flutter/material.dart';

class Assignment {
  double _maxScore;
  double _scoreReceived;
  double _weightage;
  String _assignmentName;
  String _remarks;

  Assignment({@required assignmentName, scoreReceived = 0, maxScore = 0, @required remarks, weightage = 1}) {
      this.setAssignmentName(assignmentName);
      this.setScoreReceived(scoreReceived);
      this.setMaxScore(maxScore);
      this.setRemarks(remarks);
      this.setWeightage(weightage);
    }

  double getMaxScore() {
    return this._maxScore;
  }

  double getScoreReceived() {
    return this._scoreReceived;
  }

  double getWeightage() {
    return this._weightage;
  }

  String getAssignmentName() {
    return this._assignmentName;
  }

  String getRemarks() {
    return this._remarks;
  }

  void setMaxScore(double maxScore) {
    this._maxScore = maxScore;
  }

  void setWeightage(double weightage){
    this._weightage = weightage;
  }

  void setScoreReceived(double scoreReceived) {
    this._scoreReceived = scoreReceived;
  }

  void setAssignmentName(String assignmentName) {
    this._assignmentName = assignmentName;
  }

  void setRemarks(String remarks) {
    this._remarks = remarks;
  }
}
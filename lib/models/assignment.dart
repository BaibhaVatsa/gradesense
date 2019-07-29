import 'package:flutter/material.dart';

class Assignment {
  double _maxScore;
  double _scoreReceived;
  double _weightage;
  String _assignmentName;
  String _remarks;

  Assignment({@required assignmentName, scoreReceived = 0.0, maxScore = 0.0, @required remarks, weightage = 1.0}) {
//      assignmentName(assignmentName);
    this._assignmentName = assignmentName;
      this._scoreReceived = scoreReceived;
      this._maxScore = maxScore;
//      remarks(remarks);
    this._remarks = remarks;
    this._weightage = weightage;
    }

  double get maxScore => this._maxScore;

  double get scoreReceived => this._scoreReceived;

  double get weightage => this._weightage;

  String get assignmentName => this._assignmentName;

  String get remarks => this._remarks;

  set maxScore(double maxScore) => this._maxScore = maxScore;

  set weightage(double weightage) => this._weightage = weightage;

  set scoreReceived(double scoreReceived) => this._scoreReceived = scoreReceived;

  set assignmentName(String assignmentName) => this._assignmentName = assignmentName;

  set remarks(String remarks) => this._remarks = remarks;
}
import 'package:flutter/material.dart';

class Assignment {
  double _maxScore;
  double _scoreReceived;
  double _weightage;
  String _assignmentName;
  String _remarks;

  Assignment({@required assignmentName, scoreReceived = 0, maxScore = 0, @required remarks, weightage = 1}) {
      assignmentName(assignmentName);
      scoreReceived(scoreReceived);
      maxScore(maxScore);
      remarks(remarks);
      weightage(weightage);
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
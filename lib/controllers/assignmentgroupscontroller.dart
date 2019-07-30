import '../models/assignmentgroup.dart';
import '../models/course.dart';

class AssignmentGroupsController {
  Course _course;
  List<AssignmentGroup> _assignmentGroups;


  AssignmentGroupsController(Course course) {
    this._course = course;
    this._assignmentGroups = this._course.getAssignmentGroups();
  }

  int get numAssignmentGroups => this._assignmentGroups.length;

  String assignmentGroupText(int index) {
    AssignmentGroup thisAssignmentGroup = this._assignmentGroups[index];
    return thisAssignmentGroup.getAssignmentGroupName() + "\t" + thisAssignmentGroup.getScoreReceived().toString() + "/" + thisAssignmentGroup.getMaxScore().toString();
  }

  void assignmentGroupClicked(int index, context) {

  }



}
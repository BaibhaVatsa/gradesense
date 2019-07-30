import 'package:flutter/material.dart';
import 'components.dart' as components;
import 'package:gpa_app/controllers/assignmentgroupscontroller.dart';
import 'package:provider/provider.dart';
import 'package:gpa_app/providers/usermodel.dart';

class AssignmentGroupsPage extends StatelessWidget {
  int _courseIndex, _semesterIndex;
  AssignmentGroupsController _assignmentGroupController;

  AssignmentGroupsPage({@required int courseIndex, @required int semesterIndex}) {
    this._courseIndex = courseIndex;
    this._semesterIndex = semesterIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(child: Consumer<UserModel>(
              builder: (context, user, child) {
                this._assignmentGroupController = AssignmentGroupsController(user.user.getSemester(this._semesterIndex).getCourse(this._courseIndex));
                return _renderBody(context);
              }
          )),
        ));
  }

  Widget _renderBody(BuildContext context) {
    var courseList = new List<Widget>();
    for (int i = 0; i < this._assignmentGroupController.numAssignmentGroups; ++i) {
      courseList.add(GestureDetector(
        child: Text(this._assignmentGroupController.assignmentGroupText(i)),
        onTap: () => this._assignmentGroupController.assignmentGroupClicked(i, context),
      ));
      courseList.add(components.renderPadding(10));
    }
    return ListView(
        children: courseList
    );
  }
}
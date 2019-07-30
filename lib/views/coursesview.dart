import 'package:flutter/material.dart';
import 'components.dart' as components;
import 'package:gpa_app/controllers/coursescontroller.dart';
import 'package:provider/provider.dart';
import 'package:gpa_app/providers/usermodel.dart';

class CoursesPage extends StatelessWidget {
  @override

  int _semesterIndex;
  CoursesController _courseController;

  CoursesPage({@required int semesterIndex}){
    this._semesterIndex = semesterIndex;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(child: Consumer<UserModel>(
              builder: (context, user, child) {
                this._courseController = new CoursesController(user.user.getSemester(this._semesterIndex));
                return _renderBody(context);
              }
          )),
        ));
  }

  Widget _renderBody(BuildContext context) {
    var courseList = new List<Widget>();
    for (int i = 0; i < this._courseController.numCourses; ++i) {
      courseList.add(GestureDetector(
        child: Text(this._courseController.courseText(i)),
        onTap: () => this._courseController.courseClicked(i, context),
      ));
      courseList.add(components.renderPadding(10));
    }
    return ListView(
      children: courseList
    );
  }
}
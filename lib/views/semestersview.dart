import 'package:flutter/material.dart';
import 'components.dart' as components;
import 'package:gpa_app/controllers/semesterscontroller.dart';
import 'package:provider/provider.dart';
import 'package:gpa_app/providers/usermodel.dart';

class SemesterPage extends StatelessWidget {

  SemestersController _semesterController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(child: Consumer<UserModel>(
        builder: (context, user, child) {
          this._semesterController = new SemestersController(user.user);
          return _renderBody(context);
        }
      )),
    ));
  }

  Widget _renderBody(BuildContext context) {
//     var body = new List<Widget>();
//     body.add(_renderFirstSem(context));
//     body.addAll();
     return ListView(
       children: _renderRemainingSemesters(context),
     );
  }

//  Widget _renderFirstSem(BuildContext context) {
//    return GestureDetector(
//      child: ListView(
//        children: this._semesterController.getCourses(),
//      ),
//      onTap: () => this._semesterController.semClicked(context, 0),
//    );
//  }

  List<Widget> _renderRemainingSemesters(BuildContext context) {
    var semList = new List<Widget>();
    for (int i = 0; i < this._semesterController.numSemesters; ++i) {
      semList.add(GestureDetector(
        child: Text(this._semesterController.semesterText(i)),
        onTap: () => this._semesterController.semesterClicked(i, context),
      ));
      semList.add(components.renderPadding(10));
    }
    return semList;
  }
}
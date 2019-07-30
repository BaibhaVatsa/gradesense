import '../models/course.dart';
import '../models/semester.dart';
import 'package:flutter/material.dart';
import '../views/assignmentgroupsview.dart';

class CoursesController {

    CoursesController(Semester sem) {
      this._semester = sem;
      this._courses = this._semester.getCourses();
    }

    List<Course> _courses;
    Semester _semester;

    int get numCourses => this._courses.length;

    void courseClicked(int index, BuildContext context) {
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => AssignmentGroupsPage(courseIndex: index, semesterIndex: 0)
          )
      );
    }

    String courseText(int index) {
      Course thisCourse = this._courses[index];
      return thisCourse.getCourseName() + "\t" + thisCourse.getNumberOfCredits().toString() + "\t" + thisCourse.getScoreReceived().toString() + "/" + thisCourse.getMaxScore().toString();
    }
}
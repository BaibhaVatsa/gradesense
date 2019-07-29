import '../models/semester.dart';
import '../models/user.dart';
import '../models/assignment.dart';
import '../models/assignmentgroup.dart';
import '../models/course.dart';

class mock {
//static List<User> fetchAll() {
//  return users;
//}

static User fetchAny() {
  final List<User> users = [
    User(
//    maxGpa: 4,
        userName: 'Elon Musk',
        userEmail: 'elonmusk@tesla.com',
        hashedPassword: 'spacex',
        userImageUrl: 'assets/images/mock_2.png',
        semesters: [
          Semester(
              semesterName: "Fall 2019",
              courses: [
                Course(
                    numberOfCredits: 3.0,
                    courseName: 'CS 3251',
                    assignmentGroups: [
                      AssignmentGroup(
                          assignmentGroupName: 'Projects',
                          assignments: [
                            Assignment(
                                assignmentName: 'Project 0',
                                remarks: 'Good assignment'
                            )
                          ]
                      )
                    ]
                )
              ]
          )
        ]
    ),

//    User(
//        maxGpa: 5,
//        userName: 'George Hotz',
//        userEmail: 'geohot@commaai.com',
//        userImageUrl: 'assets/images/mock_1.jpg',
//        semesters: [
//          Semester(
//
//          )
//        ]
//    ),
//
//    User(
//        maxGpa: 10,
//        userName: 'Elizabeth Holmes',
//        userEmail: 'holmes@theranos.com',
//        userImageUrl: 'assets/images/mock_3.jpg',
//        semesters: [
//          Semester(
//
//          ),
//
//          Semester(
//
//          ),
//
//          Semester(
//
//          ),
//
//          Semester(
//
//          ),
//
//          Semester(
//
//          ),
//
//          Semester(
//
//          ),
//
//          Semester(
//
//          ),
//
//          Semester(
//
//          )
//        ]
//    )
  ];
  return users[0];
}
}
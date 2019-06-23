import '../models/semester.dart';
import '../models/user.dart';
import '../models/assignment.dart';
import '../models/assignmentgroup.dart';
import '../models/course.dart';

List<User> users = [
  User(
    maxGpa: 4,
    userName: 'Elon Musk',
    userEmail: 'elonmusk@tesla.com',
    userImageUrl: 'assets/images/mock_2.png',
    semesters: []
  ),

  User(
    maxGpa: 5,
    userName: 'George Hotz',
    userEmail: 'geohot@commaai.com',
    userImageUrl: 'assets/images/mock_1.jpg',
    semesters: [
      Semester(

      )
    ]
  ),
  
  User(
    maxGpa: 10,
    userName: 'Elizabeth Holmes',
    userEmail: 'holmes@theranos.com',
    userImageUrl: 'assets/images/mock_3.jpg',
    semesters: [
      Semester(
        
      ),

      Semester(

      ),

      Semester(

      ),

      Semester(
        
      ),

      Semester(

      ),

      Semester(

      ),

      Semester(

      ),

      Semester(

      )
    ]
  )
];

List<User> fetchAll() {
  return users;
}

User fetchAny() {
  return users[0];
}
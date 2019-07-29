import '../models/user.dart';

class SemestersController {
  static User _user = null;

  static setUser(User usr) => _user = usr;

  static String getUserImageUrl() => _user.getUserImageUrl();

  static String getUserName() => _user.getUserName();

  static String getUserOverallGpa() =>  _user.getGpaReceived().toString();

  static String getUserCurrentSemGpa() => _user.getSemester(0).getGpaReceived().toString();
}
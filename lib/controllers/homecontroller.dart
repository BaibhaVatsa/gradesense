import 'parsedata.dart';
import '../models/user.dart';

class HomePageController {
  static String appBarTitle() => "GradeSense";

  static User _user = null;

  static setUser(User usr) => _user = usr;

  static String getUserImageUrl() => _user.getUserImageUrl();

  static String getUserName() => _user.getUserName();

  static String welcomeMessage() => "Welcome ${getUserName()}!";

  static String getUserOverallGpa() =>  _user.getGpaReceived().toString();

  static String getUserCurrentSemGpa() => _user.getSemester(0).getGpaReceived().toString();
}
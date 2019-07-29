import 'parsedata.dart';
import '../models/user.dart';

class HomePageController {
  static String appBarTitle() => "GradeSense";

  static User user = null;

  static setUser(User usr) => user = usr;

  static String getUserImageUrl() => user.getUserImageUrl();

  static String getUserName() => user.getUserName();

  static String welcomeMessage() => "Welcome ${getUserName()}!";

  static String getUserOverallGpa() =>  user.getGpaReceived().toString();

  static String getUserCurrentSemGpa() => user.getSemester(0).getGpaReceived().toString();
}
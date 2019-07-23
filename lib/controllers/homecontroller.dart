import 'parsedata.dart';

class HomePageController {
  static String appBarTitle() => "GPA Calculator";

  static String getUserImageUrl() => ParseData.currentUser.getUserImageUrl();

  static String getUserName() => ParseData.currentUser.getUserName();

  static String welcomeMessage() => "Welcome ${getUserName()}!";

  static String getUserOverallGpa() =>  ParseData.currentUser.getGpaReceived().toString();

  static String getUserCurrentSemGpa() => ParseData.currentUser.getSemester(0).getGpaReceived().toString();
}
import 'parsedata.dart';

class ProfileController {
  static String getUserImageUrl() => ParseData.currentUser.getUserImageUrl();

  static String getUserName() => ParseData.currentUser.getUserName();

  static String getUserEmail() => ParseData.currentUser.getUserEmail();
}
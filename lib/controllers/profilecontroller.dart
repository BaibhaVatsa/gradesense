import 'package:gpa_app/models/user.dart';

class ProfileController {

  static User _user = null;

  static void setUser(User user) => _user = user;

  static String getUserImageUrl() => _user.getUserImageUrl();

  static String getUserName() => _user.getUserName();

  static String getUserEmail() => _user.getUserEmail();
}
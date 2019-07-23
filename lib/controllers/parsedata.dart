import '../models/user.dart';

class ParseData {

  static User currentUser;

  static List<String> securityQuestions;

  static String hashFn(String text) {
    return "";
  }

  static List<User> parseUsersList() {
    _parseJson("../../data/users.json");
  }

  static bool _parseJson(String address) {
    return true;
  }
}
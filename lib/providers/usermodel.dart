import 'package:flutter/material.dart';
import '../models/user.dart';

class UserModel extends ChangeNotifier {
  User _user = null; 
  
  User get user => _user;
  
  void whichUser(User user) {
    _user = user;
    notifyListeners();
  }

}
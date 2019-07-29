import 'package:flutter/material.dart';
import 'components.dart';
import 'package:gpa_app/controllers/editpasswordcontroller.dart';
import 'package:provider/provider.dart';
import 'package:gpa_app/providers/usermodel.dart';

class EditPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
          child: Container(child: Consumer<UserModel>(
              builder: (context, user, child) {
                EditPasswordController.setUser(user.user);
                return _renderBody();
              }
          )),
        ));
  }

  Widget _renderBody() {
    return renderPadding(10.0);
  }
}
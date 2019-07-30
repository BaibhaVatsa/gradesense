import 'package:flutter/material.dart';
import '../controllers/profilecontroller.dart';
import 'components.dart' as components;
import 'package:provider/provider.dart';
import 'package:gpa_app/providers/usermodel.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(child: Consumer<UserModel>(
          builder: (context, user, child)  {
            ProfileController.setUser(user.user);
            return _renderBody();
          },
        )
        )
      ),
    );
  }

  Widget _renderBody() {
    var body = new List<Widget>();
//    body.add(_renderProfilePicture());
    body.add(components.renderPadding(10.0));
    body.add(_renderUsername());
    body.add(components.renderPadding(10.0));
    body.add(_renderUserEmail());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: body
    );
  }

  Widget _renderProfilePicture() {
    return Image.asset(ProfileController.getUserImageUrl());
  }

  Widget _renderUsername() {
    return Text(ProfileController.getUserName());
  }

  Widget _renderUserEmail() {
    return Text(ProfileController.getUserEmail());
  }
}
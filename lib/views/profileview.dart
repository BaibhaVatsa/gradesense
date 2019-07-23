import 'package:flutter/material.dart';
import '../controllers/profilecontroller.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
  
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: _renderBody(),
        )
      ),
    );
  }

  List<Widget> _renderBody() {
    List<Widget> body;
    body.add(_renderProfilePicture());
    body.add(_renderUsername());
    body.add(_renderUserEmail());
    return body;
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
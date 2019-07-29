import 'package:flutter/material.dart';
import '../controllers/profilecontroller.dart';
import 'components.dart' as components;
import 'package:provider/provider.dart';
import 'package:gpa_app/providers/usermodel.dart';

class ProfilePage extends StatelessWidget {
  // @override
  // _ProfilePageState createState() => _ProfilePageState();
// }
  
// class _ProfilePageState extends State<ProfilePage> {
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
    List<Widget> body;
    body.add(_renderProfilePicture());
    body.add(components.renderPadding(10.0));
    body.add(_renderUsername());
    body.add(components.renderPadding(10.0));
    body.add(_renderUserEmail());
    return ListView (children: body);
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
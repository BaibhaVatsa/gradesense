import 'package:flutter/material.dart';
import 'package:gpa_app/controllers/homecontroller.dart';
import 'package:gpa_app/views/components.dart';
import 'package:gpa_app/providers/usermodel.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderHomeAppBar(),
      body: SafeArea(
        child: Container(child: Consumer<UserModel>(
          builder: (context, user, child) {
            HomePageController.setUser(user.user);
            return _renderHomePage(context);
          },
          )
        )
      )
    );
  }

  Widget _renderHomeAppBar() {
    return AppBar(
      elevation: 4.0,
      title: Text(
        HomePageController.appBarTitle()
      )
    );
  }

  Widget _renderHomePage(BuildContext context) {
    var homePage = List<Widget>();
//    homePage.add(_renderProfileImage());
    homePage.add(_renderWelcomeMessage(context));
    homePage.add(_renderGpaOverall(context));
    homePage.add(_renderGpaCurrentSem());
    return Column(
      children: homePage
    );
  }

  Widget _renderProfileImage() {
    return Image.asset(HomePageController.getUserImageUrl());
  }

  Widget _renderWelcomeMessage(BuildContext context) {
    return GestureDetector(
      child: Text(HomePageController.welcomeMessage()),
      onTap: () => HomePageController.welcomeMessageClicked(context),
    );
  }

  Widget _renderGpaOverall(BuildContext context) {
    return GestureDetector(
        child: Text(HomePageController.getUserOverallGpa()),
      onTap: () => HomePageController.gpaOverallClicked(context),
    );
  }

  Widget _renderGpaCurrentSem() {
    return Text(HomePageController.getUserCurrentSemGpa());
  }
}
import 'package:flutter/material.dart';
import '../controllers/homecontroller.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderHomeAppBar(),
      body: SafeArea(
        child: _renderHomePage(),
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

  Widget _renderHomePage() {
    var homePage = List<Widget>();
    homePage.add(_renderProfileImage());
    homePage.add(_renderWelcomeMessage());
    homePage.add(_renderGpaOverall());
    homePage.add(_renderGpaCurrentSem());
    return Column(
      children: homePage
    );
  }

  Widget _renderProfileImage() {
    return Image.asset(HomePageController.getUserImageUrl());
  }

  Widget _renderWelcomeMessage() {
    return Text(HomePageController.welcomeMessage());
  }

  Widget _renderGpaOverall() {
    return Text(HomePageController.getUserOverallGpa());
  }

  Widget _renderGpaCurrentSem() {
    return Text(HomePageController.getUserCurrentSemGpa());
  }
}
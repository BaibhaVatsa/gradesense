import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _renderHomeAppBar(),
      body: SafeArea(
        child: _renderHomePage(),
      )
    );
  }

  // Widget _renderHomeAppBar() {
  //   return AppBar(
  //     elevation: 4.0,
  //     title: Text('GPA Calculator')
  //   );
  // }

  Widget _renderHomePage() {
    var homePage = List<Widget>();
    homePage.add(_renderProfileImage());
    homePage.add(_renderWelcomeMessage());
    homePage.add(_renderGpaOverall());
    homePage.add(_renderGpaCurrentSem());
    homePage.add(_renderCustomiseButtons());
    return Column(
      children: homePage
    );
  }

  Widget _renderProfileImage() {
    return Image.network('https://pmcvariety.files.wordpress.com/2018/05/discord-logo.jpg?w=1000&h=563&crop=1');
  }

  Widget _renderWelcomeMessage() {
    return Text('Welcome!');
  }

  Widget _renderGpaOverall() {
    return Text('GPA: 3.43/4.00');
  }

  Widget _renderGpaCurrentSem() {
    return Text('Spring 2019: 3.53/4.00');
  }

  Widget _renderCustomiseButtons() {
    return FloatingActionButton(
      elevation: 0.0,
      child: Icon(Icons.settings),
      onPressed: () {

      },
    );
  }
}
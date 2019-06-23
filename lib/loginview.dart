import 'package:flutter/material.dart';
import 'homeview.dart';
import 'theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          children: _renderBody(),
        ),
      ),
    );
  }

  List<Widget> _renderBody() {
    var result = List<Widget>();
    result.add(_renderImage());
    result.add(_renderPadding(10.0));
    result.addAll(_renderInputFieldsWithPadding());
    result.add(_renderPadding(10.0));
    result.add(_renderButtons());
    return result;
  }

  Widget _renderPadding(double paddingHeight) {
    return SizedBox(height: paddingHeight);
  }

  Widget _renderImage() {
    return Image.asset(logoImageAddress);
  }

  List<Widget> _renderInputFieldsWithPadding() {
    return <Widget>[
      _renderUsernameInputField(),
      _renderPadding(10.0),
      _renderPasswordInputField()
    ];
  }

  Widget _renderPasswordInputField() {
    return TextField(
      controller: _usernameController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password'
      ),
    );
  }

  Widget _renderUsernameInputField() {
    return TextField(
      controller: _passwordController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Username'
      ),
    );
  }

  Widget _renderButtons() {
    return ButtonBar(
      children: <Widget>[
        _renderCancelButton(),
        _renderSubmitButton()  
      ],
    );
  }

  Widget _renderCancelButton() {
    return FlatButton(
      child: Text('Cancel'),
      onPressed: () {
        _usernameController.clear();
        _passwordController.clear();
      },
    );
  }

  Widget _renderSubmitButton() {
    return FlatButton(
      child: Text('Next', style: TextStyle(color: Colors.white)),
      color: Colors.deepPurple,
      onPressed: () {
        // double userID = _verifyUser();
        // Navigator.of(context).pop();
        Navigator.of(context).push( 
          MaterialPageRoute(
            builder: (context) => HomePage()
          )
        );
      },
    );
  }

  double _verifyUser() {
    return 0;
  }
}
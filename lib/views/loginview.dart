import 'package:flutter/material.dart';
import '../controllers/logincontroller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO
  //    not constant edge insets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          children: _renderBody(),
        )
      )
    );
  }

  // TODO
  //    Make padding variable
  List<Widget> _renderBody() {
    var result = List<Widget>();
    result.add(_renderImage());
    result.add(_renderPadding(10.0));
    result.addAll(_renderInputFieldsWithPadding());
    result.add(_renderPadding(10.0));
    result.add(_renderButtons());
    result.add(_renderPadding(10.0));
    result.add(_renderOtherAccountOptions());
    return result;
  }

  // TODO
  //    ButtonBar-like for "Create Account" and "Forgot Password?"
  Widget _renderOtherAccountOptions() {
    return TextField();
  }

  Widget _renderPadding(double paddingHeight) {
    return SizedBox(height: paddingHeight);
  }

  // TODO
  //    Align and circle logo and shizz
  Widget _renderImage() {
    return Image.asset(LoginController.getLogoUrl());
  }

  List<Widget> _renderInputFieldsWithPadding() {
    return <Widget>[
      _renderEmailInputField(),
      _renderPadding(10.0),
      _renderPasswordInputField()
    ];
  }

  Widget _renderPasswordInputField() {
    return TextField(
      controller: LoginController.passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: LoginController.fieldBorderSide()
        ),
        labelText: 'Password'
      ),
    );
  }

  Widget _renderEmailInputField() {
    return TextField(
      controller: LoginController.emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide:  LoginController.fieldBorderSide()
        ),
        labelText: 'Email'
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
        LoginController.cancelButtonPressed();
      },
    );
  }

  Widget _renderSubmitButton() {
    return RaisedButton(
      child: Text('Next', style: TextStyle(color: Colors.white)),
      color: Colors.deepPurple,
      onPressed: () {
        LoginController.submitButtonPressed(context);
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:gpa_app/controllers/logincontroller.dart';
import 'package:gpa_app/views/components.dart' as components;
import 'package:provider/provider.dart';
import 'package:gpa_app/providers/usermodel.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}): super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  // TODO
  //    not constant edge insets
  @override
  Widget build(BuildContext context) {
//    return Provider<UsberModel>(
//        builder: (context) => UserModel(),
        return Scaffold(
          body: SafeArea(
            child: ListView(
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              children: _renderBody(),
            )
          )
//        )
    );
  }

  // TODO
  //    Make padding variable
  List<Widget> _renderBody() {
    var result = List<Widget>();
//    result.add(_renderImage());
    result.add(components.renderPadding(10.0));
    result.addAll(_renderInputFieldsWithPadding());
    result.add(components.renderPadding(10.0));
    result.add(_renderButtons());
    result.add(components.renderPadding(10.0));
    result.add(_renderOtherAccountOptions());
    return result;
  }

  // TODO
  //    ButtonBar-like for "Create Account" and "Forgot Password?"
  Widget _renderOtherAccountOptions() {
    return TextField();
  }

  // TODO
  //    Align and circle logo and shizz
  Widget _renderImage() {
    return Image.asset(LoginController.getLogoUrl());
  }

  List<Widget> _renderInputFieldsWithPadding() {
    return <Widget>[
      _renderEmailInputField(),
      components.renderPadding(10.0),
      _renderPasswordInputField()
    ];
  }

  Widget _renderPasswordInputField() {
    return TextField(
      controller: _passwordController,
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
      controller: _emailController,
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
//        LoginController.cancelButtonPressed(_emailController, _passwordController);
        _emailController.clear();
        _passwordController.clear();
      },
    );
  }

  Widget _renderSubmitButton() {
    return RaisedButton(
      child: Text('Next', style: TextStyle(color: Colors.white)),
      color: Colors.deepPurple,
      onPressed: () {
        LoginController.submitButtonPressed(context, _emailController, _passwordController);
      },
    );
  }
}
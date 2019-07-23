import 'package:flutter/material.dart';
import '../controllers/forgotpasswordcontroller.dart';

class ForgotPasswordPage extends StatefulWidget{
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderAppBar(),
      body: _renderBody()
    );
  }

  Widget _renderAppBar() {
    return AppBar(

    );
  }

  Widget _renderBody() {
    var bodyWidgets = List<Widget>();
    bodyWidgets.addAll(_renderUserEntryFields());
    bodyWidgets.addAll(_renderButtons());

    return ListView(
      children: bodyWidgets,
    );
  }

  List<Widget> _renderUserEntryFields() {
    return [
      _renderEmailField(),
      _renderSecurityQuestionField(),
      _renderSecurityQuestionAnswerField()
    ];
  }

  List<Widget> _renderButtons() {
    return [
      _renderCancelButton(),
      _renderSubmitButton()
    ];
  }

  Widget _renderEmailField() {
    return TextField(
      controller: ForgotPasswordController.emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide:  ForgotPasswordController.fieldBorderSide()
        ),
        labelText: 'Email'
      ),
    );
  }

  Widget _renderSecurityQuestionField() {
    return Text(
       ForgotPasswordController.getSecurityQuestion()
    );
  }

  Widget _renderSecurityQuestionAnswerField() {
    return TextField(
      controller:  ForgotPasswordController.securityQuestionController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide:  ForgotPasswordController.fieldBorderSide()
        ),
        labelText: 'Security Answer'
      ),
    );
  }

  Widget _renderCancelButton() {
    return FlatButton(
      child: Text('Cancel'),
      onPressed: () {
         ForgotPasswordController.cancelButtonPressed(); 
      }
    );
  }

  Widget _renderSubmitButton() {
    return RaisedButton(
      child: Text('Next', style: TextStyle(color: Colors.white)),
      color: Colors.deepPurple,
      onPressed: () {
         ForgotPasswordController.submitButtonPressed(context);
      }
    );
  }

}
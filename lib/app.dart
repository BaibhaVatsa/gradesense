import 'package:flutter/material.dart';
import 'package:gpa_app/style/theme.dart';
import 'package:gpa_app/views/loginview.dart';
import 'package:gpa_app/providers/usermodel.dart';
import 'package:provider/provider.dart';


class GPAApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserModel>(
        builder: (context) => UserModel(),
        child:MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple,
      //   fontFamily: 'Muli'
      // ),
      theme: appTheme,
      home:  LoginPage(),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'loginview.dart';

class GPAApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Muli'
      ),
      home: LoginPage(),

    );
  }
}
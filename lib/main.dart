import 'package:flutter/material.dart';
import 'package:flutter_app/routes.dart';
import 'package:flutter_app/auth.dart';


void main() => runApp(new LoginApp());

class LoginApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Camp App',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: routes,
    );
  }


}
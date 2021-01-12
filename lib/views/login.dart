import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Login Page Header"),
        //   backgroundColor: Colors.transparent,
        // ),
        body: Center(
          child: Text("Login PAge"),
        ),
      ),
    );
  }
}
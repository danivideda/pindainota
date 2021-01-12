import 'package:flutter/material.dart';
// ignore: unused_import
import 'views/homepage.dart';
import 'views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "app built with bridged.xyz",
      theme: ThemeData(
        textTheme: TextTheme(),
      ),
      // home: HomePage(),
      home: LoginPage(),
    );
  }
}

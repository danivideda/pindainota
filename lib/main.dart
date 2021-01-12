import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'views/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: HomePage(),
    );
  }
}

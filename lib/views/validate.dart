import 'package:firebase_ml_vision/firebase_ml_vision.dart';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:open_file/open_file.dart';

import 'package:pindainota/views/homepage.dart';

class Validate extends StatefulWidget {
  @override
  _ValidateState createState() => _ValidateState();
}

class _ValidateState extends State<Validate> {
  @override
  Widget build(BuildContext context) {
    final List<dynamic> args = ModalRoute.of(context).settings.arguments;
    final String strippedUrl = args[0];
    final VisionText visionText = args[1];

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 9,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          shadowColor: Colors.grey,
          backgroundColor: Color(0xff53b175),
          title: Text(
            'Hasil Pindai',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
        ),
        body: Container(
            color: Colors.deepOrangeAccent, child: Text('${visionText.text}')));
  }
}

import 'package:flutter/material.dart';

class DetailNota extends StatefulWidget {
  final String notaDesc;
  final String notaTitle;

  DetailNota({this.notaDesc, this.notaTitle});

  @override
  _DetailNotaState createState() => _DetailNotaState();
}

class _DetailNotaState extends State<DetailNota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        toolbarHeight: MediaQuery.of(context).size.height / 9,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.notaTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 16,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width - 16,
                color: Color(0xff53b175),
                child: Icon(Icons.image),
              ),
              Text(
                widget.notaDesc,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

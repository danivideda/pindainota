import 'package:flutter/material.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/onboarding-bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 98,
                height: 103,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/pindainota-logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 81,
              ),
              Text(
                "Selamat\nDatang",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 81,
              ),
              SizedBox(
                child: Text(
                  "Aplikasi Pemindai Nota untuk Laporan Desa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 313,
                height: 44,
              ),
              SizedBox(
                height: 81,
              ),
              Container(
                child: Text(
                  "Mari Kita Mulai",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 285,
                height: 59,
                padding: EdgeInsets.only(
                  left: 92,
                  right: 93,
                  top: 20,
                  bottom: 21,
                ),
                decoration: BoxDecoration(
                  color: Color(
                    0xff53b175,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

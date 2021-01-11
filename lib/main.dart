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
        return Scaffold(
          body: Container(
            child: Stack(
              children: [
                /// wrap:positioned of "splash 1"
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 1015,
                      height: 1396,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/PhOmd728-[object Object]",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
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
                            image: NetworkImage(
                              "https://resource-hosting.s3.us-west-1.amazonaws.com/1s_sXk91-[object Object]",
                            ),
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
                          color: Colors.black,
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
                  width: 411,
                  padding: EdgeInsets.only(
                    top: 101,
                    bottom: 88,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),

                /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                Container(),
              ],
            ),
            width: MediaQuery.of(context).size.width,
          ),
        );
      }
}

import 'package:flutter/material.dart';
import 'package:pindainota/views/login.dart';

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
          child: Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 105,
                  height: 135,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/pindainota-logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Selamat\nDatang",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Aplikasi Pemindai Nota untuk Laporan Desa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.center,
                      ),

                      // Container(
                      //   child: Text(
                      //     "Mari Kita Mulai",
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w500,
                      //       fontFamily: "Poppins",
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      //   width: 285,
                      //   height: 59,
                      //   padding: EdgeInsets.only(
                      //     top: 20,
                      //     bottom: 21,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     color: Color(
                      //       0xff53b175,
                      //     ),
                      //     borderRadius: BorderRadius.circular(
                      //       10,
                      //     ),
                      //   ),
                      // ),

                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 100,
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 21,
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xff53b175),
                            onSurface: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            'Mari Kita Mulai',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

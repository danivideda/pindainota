import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_genius_scan/flutter_genius_scan.dart';

import 'package:open_file/open_file.dart';
import 'package:pindainota/views/homepage.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: MediaQuery.of(context).size.height / 9,
              iconTheme: IconThemeData(
                color: Colors.white, //change your color here
              ),
              shadowColor: Colors.grey,
              backgroundColor: Color(0xff53b175),
              title: Text(
                'Tambah Nota',
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
            body: MyScaffoldBody()),
      ),
    );
  }
}

class MyScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/other-bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height / 1.3,
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 200,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/add-image/camera.png"),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 240,
                          child: FlatButton(
                            onPressed: () {
                              FlutterGeniusScan.setLicenceKey(
                                  '533c5006555500020155005739525a0e4a064a0559465e5c4c465d085359595e0d40053d0903070455000101535a');
                              FlutterGeniusScan.scanWithConfiguration({
                                'source': 'camera',
                                'multiPage': false,
                                'backgroundColor': '#53b175',
                                'highlightColor': '#FFCE2E',
                                'jpegQuality': 100,
                              }).then((result) {
                                List scans = result['scans'];
                                String enhancedUrl = scans[0]['enhancedUrl'];
                                print(enhancedUrl);
                                OpenFile.open(
                                  enhancedUrl.replaceAll("file://", ''),
                                );
                              });
                            },
                            child: Center(
                              child: Text(
                                'Tambahkan lewat Kamera',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                            textColor: Colors.white,
                            color: Color(
                              0xff53b175,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            height: 10,
                            minWidth: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.transparent,
                  height: 200,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/add-image/gallery.png"),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 240,
                          child: FlatButton(
                            onPressed: () {
                              AlertDialog alertDialog = new AlertDialog(
                                content: new Container(
                                    height: 40,
                                    child: new Center(
                                      child:
                                          new Text("Maaf Belum Diimplementasi"),
                                    )),
                              );
                              showDialog(
                                  context: context,
                                  child: alertDialog,
                                  barrierDismissible: true);
                            },
                            child: Center(
                              child: Text(
                                'Tambahkan lewat Galeri',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                            textColor: Colors.white,
                            color: Color(
                              0xff53b175,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            height: 10,
                            minWidth: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void displayError(BuildContext context, PlatformException error) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(error.message)));
  }
}

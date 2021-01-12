import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> textList = ["text 1", "text 2", "text 3", "text 4", "text 5"];
  String uid = FirebaseAuth.instance.currentUser.uid;

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
          'Rencana\nPembangunan\nDesa Alpukado',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .collection('projects')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(
                        0xff53b175,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        snapshot.data.docs[index]['nama_project'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: snapshot.data.docs.length,
          );
        },
      ),
    );
  }
}

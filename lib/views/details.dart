import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pindainota/views/camera.dart';
import 'package:pindainota/views/detailNota.dart';

class Nota {
  final String title;
  final String description;

  Nota(this.title, this.description);
}

class Details extends StatefulWidget {
  final String namaProject;
  final List<Nota> nota = List.generate(
    10,
    (index) => Nota("Nota ${index + 1}", "Deskripsi untuk Nota ${index + 1}"),
  );

  Details({@required this.namaProject});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String uid = FirebaseAuth.instance.currentUser.uid;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        toolbarHeight: MediaQuery.of(context).size.height / 9,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        // shadowColor: Colors.transparent,
        backgroundColor: Color(0xff53b175),
        title: Text(
          widget.namaProject,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 16,
          child: Center(
            child: ListView.builder(
              itemCount: widget.nota.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.nota[index].title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailNota(
                          notaDesc: widget.nota[index].description,
                          notaTitle: widget.nota[index].title,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => Camera()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.red[700],
      ),
    );
  }
}

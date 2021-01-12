import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailField = new TextEditingController();
  TextEditingController _passwordField = new TextEditingController();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login-bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                            ),
                          ),
                          width: 100,
                          height: 35,
                        ),

                        Container(
                          color: Colors.transparent,
                          child: SizedBox(
                            height: 20,
                            child: Text(
                              "Masuk dan tulis password anda",
                              style: TextStyle(
                                color: Color(
                                  0xff909090,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),

                        /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                        Container(),
                      ],
                    ),
                    width: 300,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: _emailField,
                                style: TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontFamily: "Poppins"),
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    color: Color(
                                      0xff7c7c7c,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                  labelText: "ID Kepala Desa",
                                  hintStyle: TextStyle(
                                    color: Color(
                                      0xff7c7c7c,
                                    ),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Poppins",
                                  ),
                                  hintText: "1330928901",
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(
                                        0xffE2E2E2,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),

                              /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                              Container(),
                            ],
                          ),
                          width: 365.12,
                          height: 90,
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextFormField(
                                controller: _passwordField,
                                obscureText: _obscureText,
                                style: TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontFamily: "Poppins"),
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    color: Color(
                                      0xff7c7c7c,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                  labelText: "Password",
                                  hintStyle: TextStyle(
                                    color: Color(
                                      0xff7c7c7c,
                                    ),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Poppins",
                                  ),
                                  hintText: "• • • • • • • •",
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(
                                        0xffE2E2E2,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  suffixIcon: IconButton(
                                    color: Color(0xffE2E2E2),
                                    onPressed: _toggle,
                                    icon: Icon(_obscureText
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined),
                                  ),
                                ),
                              ),

                              /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                              Container(),
                            ],
                          ),
                          width: 365.12,
                          height: 120,
                        ),
                      ],
                    ),
                    width: 364.12,
                    height: 215.55,
                  ),
                  SizedBox(
                    height: 60.22,
                  ),
                  FlatButton(
                    onPressed: () {
                      print("Button clicked!");
                    },
                    child: Text(
                      "Masuk",
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
                    height: 59,
                    minWidth: 285,
                  ),
                ],
              ),
              width: 421,
              padding: EdgeInsets.only(
                left: 29,
                right: 28,
                top: 254,
                bottom: 221,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

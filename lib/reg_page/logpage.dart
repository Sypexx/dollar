import 'dart:core';
import 'package:dollar/mainapp/menupage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogPage extends StatefulWidget {
  @override
  _LogPageState createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Center(
            child: Container(
                // decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //         begin: Alignment.topLeft,
                //         end: Alignment.bottomRight,
                //         colors: [
                //       Color.fromRGBO(107, 129, 238, 1),
                //       Color.fromRGBO(54, 78, 155, 1)
                //     ])),
                child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.2),
              child: SvgPicture.asset('assets/2.svg'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.936,
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.06,
              right: MediaQuery.of(context).size.width * 0.06,
            ),
            child: Container(
                child: Column(children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: Center(
                    child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                          right: MediaQuery.of(context).size.width * 0.04,
                        ),
                        child: Text('Вход', style: TextStyle(fontSize: 20))),
                  )),
              Container(
                height: 40,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(76, 117, 184, 1),
                                width: 3)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        labelText: 'Логин',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(76, 117, 184, 1))),
                  )),
              Container(
                height: 40,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(76, 117, 184, 1),
                                width: 3)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        labelText: 'Пароль',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(76, 117, 184, 1))),
                  )),
              Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.2,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('Вход',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    color: Color.fromRGBO(76, 117, 184, 1),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  )),
            ])),
          )
        ]))));
  }
}

import 'dart:core';
import 'package:dollar/mainapp/menupage.dart';
import 'package:dollar/reg_page/logpage.dart';
import 'package:dollar/reg_page/regpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //         colors: [
          //       Color.fromRGBO(107, 129, 238, 1),
          //       Color.fromRGBO(54, 78, 155, 1)
          //     ])),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.2),
            child: SvgPicture.asset('assets/2.svg'),
          ),
        ),
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
                Navigator.pushNamed(context, '/LogPage');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LogPage()),
                // );
              },
            )),
        Container(
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.1,
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromRGBO(76, 117, 184, 1), width: 3),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('Регистрация',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegPage()),
                );
              },
            )),
        // Container(
        //     height: MediaQuery.of(context).size.width * 0.1,
        //     width: MediaQuery.of(context).size.width,
        //     margin: EdgeInsets.only(
        //       top: MediaQuery.of(context).size.width * 0.2,
        //       left: MediaQuery.of(context).size.width * 0.1,
        //       right: MediaQuery.of(context).size.width * 0.1,
        //     ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: <Widget>[
        //         Container(
        //           height: MediaQuery.of(context).size.width * 0.005,
        //           width: MediaQuery.of(context).size.width * 0.2,
        //           color: Color.fromRGBO(75, 74, 151, 1),
        //         ),
        //         Container(
        //             margin: EdgeInsets.only(
        //               left: MediaQuery.of(context).size.width * 0.04,
        //               right: MediaQuery.of(context).size.width * 0.04,
        //             ),
        //             child: Text('войти через соц. сети',
        //                 style: TextStyle(fontSize: 12))),
        //         Container(
        //           height: MediaQuery.of(context).size.width * 0.005,
        //           width: MediaQuery.of(context).size.width * 0.2,
        //           color: Color.fromRGBO(75, 74, 151, 1),
        //         ),
        //       ],
        //     )),
        // Container(
        //     margin: EdgeInsets.only(
        //       top: MediaQuery.of(context).size.width * 0.1,
        //       left: MediaQuery.of(context).size.width * 0.1,
        //       right: MediaQuery.of(context).size.width * 0.1,
        //     ),
        //     height: MediaQuery.of(context).size.width * 0.1,
        //     width: MediaQuery.of(context).size.width,
        //     child: Row(
        //       children: <Widget>[
        //         Container(
        //             height: MediaQuery.of(context).size.width * 0.1,
        //             width: MediaQuery.of(context).size.width * 0.38,
        //             margin: EdgeInsets.only(
        //               right: MediaQuery.of(context).size.width * 0.02,
        //             ),
        //             child: MaterialButton(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(100.0),
        //               ),
        //               child: Text('facebook',
        //                   style: TextStyle(color: Colors.white, fontSize: 20)),
        //               color: Color.fromRGBO(54, 78, 155, 1),
        //               onPressed: () {
        //                 Navigator.pushNamed(context, 'RegPage');
        //                 // Navigator.push(
        //                 //   context,
        //                 //   MaterialPageRoute(builder: (context) => HomePage()),
        //                 // );
        //               },
        //             )),
        //         Container(
        //             height: MediaQuery.of(context).size.width * 0.1,
        //             width: MediaQuery.of(context).size.width * 0.38,
        //             margin: EdgeInsets.only(
        //               left: MediaQuery.of(context).size.width * 0.02,
        //             ),
        //             child: MaterialButton(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(100.0),
        //               ),
        //               child: Text('google',
        //                   style: TextStyle(color: Colors.white, fontSize: 20)),
        //               color: Color.fromRGBO(54, 78, 155, 1),
        //               onPressed: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(builder: (context) => HomePage()),
        //                 );
        //               },
        //             )),
        //       ],
        //     ))
      ])),
    );
  }
}

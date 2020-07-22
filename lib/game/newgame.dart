import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'levelselect.dart';

class NewGame extends StatefulWidget {
  int nol = 1;
  @override
  State<StatefulWidget> createState() => _NewGameState();
}

class _NewGameState extends State<NewGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(107, 129, 238, 1),
      ),
      body: Column(
        children: <Widget>[
        Center(child:Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.2,
            ),
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.83,
            child: Card(color: Color.fromRGBO(135, 143, 164, 1), child: Center(child: Text('Бизнес', style: TextStyle(color: Colors.white, fontSize: 26),))),
        ),),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          height: MediaQuery.of(context).size.height * 0.20,
          width: MediaQuery.of(context).size.width * 0.83,
          child: Card(
              color: Color.fromRGBO(84, 101, 255, 1),
              child: InkWell(
                child: Center(child: Text('Узнай Примени', style: TextStyle(color: Colors.white, fontSize: 26),)),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LevelSelect(widget.nol)),
                ),
              )),
        ),
        Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.03,
              bottom: MediaQuery.of(context).size.height * 0.07),
          height: MediaQuery.of(context).size.height * 0.20,
          width: MediaQuery.of(context).size.width * 0.83,
          child: Card(color: Color.fromRGBO(135, 143, 164, 1), child: Center(child: Text('Финансовый рынок', style: TextStyle(color: Colors.white, fontSize: 26),))),
        ),
      ]),
    );
  }
}

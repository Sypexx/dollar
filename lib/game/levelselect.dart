import 'package:dollar/game/levelpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LevelSelect extends StatefulWidget {
  final int checklvl;
  LevelSelect(this.checklvl);
  @override
  State<StatefulWidget> createState() => _LevelSelectState();
}

class _LevelSelectState extends State<LevelSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(84, 101, 255, 1),
      ),
      body: Column(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.06,
            left: MediaQuery.of(context).size.width * 0.06,
            right: MediaQuery.of(context).size.width * 0.06,
          ),
          child: Wrap(
              spacing: MediaQuery.of(context).size.width * 0.02,
              children: <Widget>[
                Levelcard(1, widget.checklvl),
                Levelcard(2, widget.checklvl),
                //Levelcard(3, widget.checklvl),
                //Levelcard(4, widget.checklvl),
                // Levelcard(5, widget.checklvl),
                // Levelcard(6, widget.checklvl),
                // Levelcard(7, widget.checklvl),
                // Levelcard(8, widget.checklvl),
                // Levelcard(9, widget.checklvl),
                // Levelcard(10, widget.checklvl),
                // Levelcard(11, widget.checklvl),
                // Levelcard(12, widget.checklvl),
              ]),
        ),
        Container(
          child: Testcard(),
        )
      ]),
    );
  }
}

class Levelcard extends StatefulWidget {
  Levelcard(this.levelNumber, this.counter);
  final int counter;
  final int levelNumber;

  @override
  _LevelcardState createState() => _LevelcardState();
}

class _LevelcardState extends State<Levelcard> {
  @override
  Widget build(BuildContext context) {
    if (widget.levelNumber <= widget.counter) {
      return Container(
          height: MediaQuery.of(context).size.width * 0.28,
          width: MediaQuery.of(context).size.width * 0.28,
          child: Card(
            color: Color.fromRGBO(84, 101, 255, 1),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Levelpage(widget.levelNumber, widget.counter),
                      ));
                },
                child: Center(
                    child: Text('${widget.levelNumber}',
                        style: TextStyle(fontSize: 48, color: Colors.white)))),
          ));
    } else {
      return Container(
          height: MediaQuery.of(context).size.width * 0.28,
          width: MediaQuery.of(context).size.width * 0.28,
          child: Card(
            color: Color.fromRGBO(135, 143, 164, 1),
            child: InkWell(
                onTap: null,
                child: Center(
                    child: Text('${widget.levelNumber}',
                        style: TextStyle(fontSize: 48, color: Colors.white)))),
          ));
    }
  }
}

class Testcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.06,
        right: MediaQuery.of(context).size.width * 0.06,
      ),
      height: MediaQuery.of(context).size.width * 0.28,
      width: MediaQuery.of(context).size.width * 0.88,
      child: Card(
          color: Color.fromRGBO(135, 143, 164, 1),
          child: Center(
              child: Text('Тест',
                  style: TextStyle(fontSize: 48, color: Colors.white)))),
    );
  }
}

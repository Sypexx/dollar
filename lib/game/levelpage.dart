import 'dart:async';
import 'package:dollar/game/logic/levels_text.dart';
import 'package:dollar/game/levelselect.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import 'logic/star_rating.dart';

class Levelpage extends StatefulWidget {
  Levelpage(this._id1, this.checklevel);
  final int checklevel;
  final int _id1;
  @override
  State<StatefulWidget> createState() => _LevelpageState();
}

class _LevelpageState extends State<Levelpage> {
  double rating = 3.5;
  Future _showAlert(BuildContext context) async {
    return showDialog(
        context: context,
        child: AlertDialog(
          title: Container(
              width: MediaQuery.of(context).size.width * 0.80,
              height: MediaQuery.of(context).size.height * 0.70,
              child: Column(children: <Widget>[
                Container(
                  child: Center(
                    child: Text('Оцените уровень:'),
                  ),
                ),
                Container(
                    child: StarRating(
                  rating: rating,
                  onRatingChanged: (rating) =>
                      setState(() => this.rating = rating),
                )),
                Container(
                  child: Center(child: Text('Комментарий:')),
                ),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    height: MediaQuery.of(context).size.height * 0.417,
                    width: MediaQuery.of(context).size.width * 0.68,
                    color: Colors.white,
                    child: Card(
                      child: Text('TEXTFIELD'),
                    )),
                Container(
                    height: MediaQuery.of(context).size.height * 0.057,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05,
                        left: MediaQuery.of(context).size.width * 0.07,
                        right: MediaQuery.of(context).size.width * 0.07),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Text('Завершить',
                          style: TextStyle(color: Colors.white, fontSize: 24)),
                      color: Color.fromRGBO(84, 101, 255, 1),
                      onPressed: () {
                        int count;
                        if (widget._id1 == 1) {
                          count = 2;
                        }
                        if (widget._id1 == 2) {
                          count = 3;
                        }
                        if (widget._id1 == 3) {
                          count = 4;
                        }
                        if (widget._id1 == 4) {
                          count = 5;
                        }
                        if (widget._id1 == 5) {
                          count = 6;
                        }
                        if (widget._id1 == 6) {
                          count = 7;
                        }
                        if (widget._id1 == 7) {
                          count = 8;
                        }
                        if (widget._id1 == 8) {
                          count = 9;
                        }
                        if (widget._id1 == 9) {
                          count = 10;
                        }
                        if (widget._id1 == 10) {
                          count = 11;
                        }
                        if (widget._id1 == 11) {
                          count = 12;
                        }
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LevelSelect(count)),
                        );
                      },
                    )),
              ])),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height * 0.52,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
        Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          body: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Center(child: Text('${widget._id1} УРОВЕНЬ')),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                height: MediaQuery.of(context).size.height * 0.055,
                width: MediaQuery.of(context).size.width * 0.33,
                child: Card(child: Center(child: Text('1.Узнай')))),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                height: MediaQuery.of(context).size.height * 0.225,
                width: MediaQuery.of(context).size.width * 0.80,
                child: ChewieDemo(widget._id1)),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.038),
                height: MediaQuery.of(context).size.height * 0.055,
                width: MediaQuery.of(context).size.width * 0.33,
                child: Card(child: Center(child: Text('2.Примени')))),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.1),
                height: MediaQuery.of(context).size.height * 0.305,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Card(child: Center(child: LevelsText(widget._id1)))),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.027),
                height: MediaQuery.of(context).size.height * 0.057,
                width: MediaQuery.of(context).size.width * 0.80,
                child: MaterialButton(
                    child: Text('Далее'),
                    color: Color.fromRGBO(84, 101, 255, 1),
                    onPressed: () => _showAlert(context)))
          ]),
        )
      ]),
    );
  }
}

class ChewieDemo extends StatefulWidget {
  ChewieDemo(this._id2);
  final int _id2;
  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  String videourl = '';
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;

  @override
  void initState() {
    if (widget._id2 == 1) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1PYl72pC6uohNWVmOk4aj_0F3PdCSs-Y2&export=download';
    }
    if (widget._id2 == 2) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1TR_fjKrNz82WU-_GqFjlfy86U5EXyJq2&export=download';
    }
    if (widget._id2 == 3) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1W3x6XamjwtfZ_0zByplJiOYUKYR_WfSs&export=download';
    }
    if (widget._id2 == 4) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1Fhh9HL6Jj5YA1GkXM7SL70_ZlYINSwvN&export=download';
    }
    if (widget._id2 == 5) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1t0zc8K7ktHy8uhv9kT_8rDQ9i3nvHekL&export=download';
    }
    if (widget._id2 == 6) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1clBQ1unm34JWgjh_o134XsWWbffenzng&export=download';
    }
    if (widget._id2 == 7) {
      videourl = 'ыфвывфыфв';
    }
    if (widget._id2 == 8) {
      videourl = 'asdsdaassad';
    }
    if (widget._id2 == 9) {
      videourl = 'asdsdaassad';
    }
    if (widget._id2 == 10) {
      videourl = 'asdsdaassad';
    }
    if (widget._id2 == 11) {
      videourl = 'asdsdaassad';
    }
    if (widget._id2 == 12) {
      videourl = 'asdsdaassad';
    }
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network('$videourl');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Chewie(
          controller: _chewieController,
        ),
      ),
    );
  }
}

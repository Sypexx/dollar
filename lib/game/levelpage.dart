import 'dart:async';
import 'package:dollar/game/logic/levels_text.dart';
import 'package:dollar/game/levelselect.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

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

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  String videourl = '';
  @override
  void initState() {
    if (widget._id1 == 1) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1TfdN4oGrYygbVzpuPKG-qpInQXDQMafZ&export=download';
    }
    if (widget._id1 == 2) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1TR_fjKrNz82WU-_GqFjlfy86U5EXyJq2&export=download';
    }
    if (widget._id1 == 3) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1W3x6XamjwtfZ_0zByplJiOYUKYR_WfSs&export=download';
    }
    if (widget._id1 == 4) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1Fhh9HL6Jj5YA1GkXM7SL70_ZlYINSwvN&export=download';
    }
    if (widget._id1 == 5) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1t0zc8K7ktHy8uhv9kT_8rDQ9i3nvHekL&export=download';
    }
    if (widget._id1 == 6) {
      videourl =
          'https://drive.google.com/u/0/uc?id=1clBQ1unm34JWgjh_o134XsWWbffenzng&export=download';
    }
    if (widget._id1 == 7) {
      videourl =
          'ыфвывфыфв';
    }
    if (widget._id1 == 8) {
      videourl = 'asdsdaassad';
    }
    if (widget._id1 == 9) {
      videourl = 'asdsdaassad';
    }
    if (widget._id1 == 10) {
      videourl = 'asdsdaassad';
    }
    if (widget._id1 == 11) {
      videourl = 'asdsdaassad';
    }
    if (widget._id1 == 12) {
      videourl = 'asdsdaassad';
    }
    _controller = VideoPlayerController.network('$videourl');

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
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
                child: FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // If the VideoPlayerController has finished initialization, use
                      // the data it provides to limit the aspect ratio of the video.
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        // Use the VideoPlayer widget to display the video.
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      // If the VideoPlayerController is still initializing, show a
                      // loading spinner.
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                )),
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

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

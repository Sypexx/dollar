import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('FAQ:'),
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 0, 0),
            child: Text(
              '1. Что это за приложение?',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 20, 40, 0),
            child: Text(
              'Это игра, которое помогает тебе учиться финансовой грамотности. Проходя определенные задачи, ты прокачиваешь свой уровень и финансовые знания, да и просто хэйвишь фан.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 60, 0, 0),
            child: Text(
              '2. Что делать вообще?',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 20, 40, 0),
            child: Text(
              'Это игра, которое помогает тебе учиться финансовой грамотности. Проходя определенные задачи, ты прокачиваешь свой уровень и финансовые знания, да и просто хэйвишь фан.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(
              'Инструкция к игре:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(
              '1. Узнай - это там где ты читатешь и узнаешь.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(
              '2. Примени - это там, где ты применяешь знание сразу в реальной жизни.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(
              '3. Опиши – это где ты пишешь, как у тебя это получилось.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

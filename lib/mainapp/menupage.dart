import 'package:dollar/game/newgame.dart';
import 'package:dollar/mainapp/drawer/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dollar/icons/dollar_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(child: SvgPicture.asset('assets/6.svg')),
          ListTile(
            leading: Icon(
              Dollar.profile,
              color: Color.fromRGBO(59, 84, 169, 1),
            ),
            title: Text('Профиль'),
            onTap: () {
              //Navigator.push(context,
              // MaterialPageRoute(builder: (context) => FAQPage()));
            },
          ),
          ListTile(
            leading: Icon(
              Dollar.premium,
              color: Color.fromRGBO(255, 194, 116, 1),
            ),
            title: Text('Премиум аккаунт'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Dollar.faq,
              color: Color.fromRGBO(59, 84, 169, 1),
            ),
            title: Text('FAQ'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FAQPage()));
            },
          ),
          ListTile(
            leading: Icon(
              Dollar.about,
              color: Color.fromRGBO(59, 84, 169, 1),
            ),
            title: Text('О нас'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Dollar.logout,
              color: Color.fromRGBO(59, 84, 169, 1),
            ),
            title: Text('Выйти'),
            onTap: () {},
          ),
        ],
      )),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          iconTheme:
              IconThemeData(color: Color.fromRGBO(76, 117, 184, 1), size: 50),
          title: Center(
            child: Container(
              child: SvgPicture.asset('assets/6.svg'),
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5, right: 5),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  image: DecorationImage(image: AssetImage('assets/5.jpg'))),
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.2,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.1,
          ),
          child: SvgPicture.asset('assets/2.svg'),
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('Уровни',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Color.fromRGBO(76, 117, 184, 1),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewGame()),
                );
              },
            )),
        Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('Настройки',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Color.fromRGBO(76, 117, 184, 1),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            )),
        Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17),
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Color.fromRGBO(76, 117, 184, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.04),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.49,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              child: Text('Цитата дня',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black))),
                          Container(
                              child: Text(
                                  'Мы находимся здесь, чтобы внести свой вклад в этот мир. Иначе зачем мы здесь?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text('(с) Стив Джобс',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))),
                        ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Color.fromRGBO(76, 117, 184, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.04),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.49,
                    child: Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        alignment: Alignment.center,
                        child: Text('Что такое стартап?',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Color.fromRGBO(76, 117, 184, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.04),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.49,
                    child: Text('data'),
                  ),
                ])
              ],
            ))
      ]),
    );
  }
}

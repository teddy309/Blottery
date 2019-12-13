import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:battery/mainPage.dart';
import 'package:battery/slideRoute.dart';

void main() => runApp(IntroScreen());

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screen1(),
        theme: ThemeData(fontFamily: 'Nanum Gothic'));
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFC, 0xFC),
        body: Container(
            margin: EdgeInsets.only(top: 45, bottom: 10),
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'page 1',
                    style: TextStyle(
                        color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                        fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/img_intro_01.png',
                        width: 350,
                      ),
                    ],
                  )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('',
                              style: TextStyle(
                                color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                              )),
                          onPressed: () => null,
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                          minRadius: 5,
                        ),
                        SizedBox(width:20),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xD8, 0xD8, 0xD8),
                          minRadius: 5,
                        ),
                        SizedBox(width:20),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xD8, 0xD8, 0xD8),
                          minRadius: 5,
                        ),
                        Spacer(),
                        FlatButton(
                          child: Text('다음',
                              style: TextStyle(
                                color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                              )),
                          onPressed: () => Navigator.push(
                              context, SlideLeftRoute(page: Screen2())),
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFC, 0xFC),
        body: Container(
            margin: EdgeInsets.only(top: 45, bottom: 10),
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'page2',
                    style: TextStyle(
                        color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                        fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/img_intro_02.png',
                        width: 350,
                      ),
                    ],
                  )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('이전',
                              style: TextStyle(
                                color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                              )),
                          onPressed: () => Navigator.push(
                              context, SlideRightRoute(page: Screen1())),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xD8, 0xD8, 0xD8),
                          minRadius: 5,
                        ),
                        SizedBox(width:20),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                          minRadius: 5,
                        ),
                        SizedBox(width:20),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xD8, 0xD8, 0xD8),
                          minRadius: 5,
                        ),
                        Spacer(),
                        FlatButton(
                          child: Text('다음',
                              style: TextStyle(
                                color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                              )),
                          onPressed: () => Navigator.push(
                              context, SlideLeftRoute(page: Screen3())),
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFC, 0xFC),
        body: Container(
            margin: EdgeInsets.only(top: 45, bottom: 10),
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'page3',
                    style: TextStyle(
                        color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                        fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/group_2.png',
                        width: 350,
                      ),
                    ],
                  )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('이전',
                              style: TextStyle(
                                color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                              )),
                          onPressed: () => Navigator.push(
                              context, SlideRightRoute(page: Screen2())),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xD8, 0xD8, 0xD8),
                          minRadius: 5,
                        ),
                        SizedBox(width:20),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xD8, 0xD8, 0xD8),
                          minRadius: 5,
                        ),
                        SizedBox(width:20),
                        CircleAvatar(
                          backgroundColor:
                              Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                          minRadius: 5,
                        ),
                        Spacer(),
                        FlatButton(
                          child: Text('시작!',
                              style: TextStyle(
                                color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                              )),
                          //onPressed: () {Navigator.of(context).pushReplacementNamed('/HomeScreen');},
                          onPressed: () => Navigator.push(
                              context, SlideRightRoute(page: MainPage())),
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}

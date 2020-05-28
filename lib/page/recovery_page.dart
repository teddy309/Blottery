import 'package:flutter/material.dart';

class RecoveryPage extends StatefulWidget {
  @override
  _RecoveryPageState createState() => new _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0x80, 0x80, 0x80, 0x80),
       body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new Card(
                  child: new Container(
                    padding: new EdgeInsets.all(20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          '차 정보',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 15),
                        Row(children: <Widget>[
                          new Text('차주ID :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('951120')
                        ],),
                        Row(children: <Widget>[
                          new Text('제조사 :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('GM')
                        ],),
                        Row(children: <Widget>[
                          new Text('차종 :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('Volt_ev')
                        ],),
                        Row(children: <Widget>[
                          new Text('시작날짜 :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('2014-09-23')
                        ],),
                        Row(children: <Widget>[
                          new Text('만료날짜 :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('2018-04-23')
                        ],),
                        
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

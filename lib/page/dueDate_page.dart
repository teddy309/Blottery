import 'package:flutter/material.dart';

class DueDatePage extends StatefulWidget {
  @override
  _DueDatePageState createState() => new _DueDatePageState();
}

class _DueDatePageState extends State<DueDatePage> {
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
                          'Block 1',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 15),
                        // Row(children: <Widget>[
                        //   new Text('data :'),
                        //   SizedBox(height: 20),
                        //   new Text('   '),
                        //   new Text('0x46e8dd67c5d32be8d46e8dd67c5d32')
                        // ],),
                        Row(children: <Widget>[
                          new Text('BMID :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('TS01_P1_S1_M2')
                        ],),
                        Row(children: <Widget>[
                          new Text('prevBMID :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('NULL')
                        ],),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('951127')
                                ]),
                                Row(children: <Widget>[
                                  new Text('perform :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('20%')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-01-05')
                                // ],)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('950310')
                                ]),
                                Row(children: <Widget>[
                                  new Text('carID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('03가 0310')
                                ],),
                                Row(children: <Widget>[
                                  new Text('perform :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('70%')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-05-07')
                                // ],)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('950310')
                                ]),
                                Row(children: <Widget>[
                                  new Text('inspection :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('reuse')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-05-07')
                                // ],)
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                new Card(
                  child: new Container(
                    padding: new EdgeInsets.all(20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          'Block 2',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 15),
                        // Row(children: <Widget>[
                        //   new Text('data :'),
                        //   SizedBox(height: 20),
                        //   new Text('   '),
                        //   new Text('0x46e8dd67c5d32be8d46e8dd67c5d32')
                        // ],),
                        Row(children: <Widget>[
                          new Text('BMID :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('TS01_P1_S1_M3')
                        ],),
                        Row(children: <Widget>[
                          new Text('prevBMID :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('TS01_P1_S1_M2')
                        ],),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('951127')
                                ]),
                                Row(children: <Widget>[
                                  new Text('perform :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('20%')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-01-05')
                                // ],)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('950310')
                                ]),
                                Row(children: <Widget>[
                                  new Text('carID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('03가 0310')
                                ],),
                                Row(children: <Widget>[
                                  new Text('perform :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('70%')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-05-07')
                                // ],)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('950310')
                                ]),
                                Row(children: <Widget>[
                                  new Text('inspection :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('reuse')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-05-07')
                                // ],)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                new Card(
                  child: new Container(
                    padding: new EdgeInsets.all(20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          'Block 3',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 15),
                        // Row(children: <Widget>[
                        //   new Text('data :'),
                        //   SizedBox(height: 20),
                        //   new Text('   '),
                        //   new Text('0x46e8dd67c5d32be8d46e8dd67c5d32')
                        // ],),
                        Row(children: <Widget>[
                          new Text('BMID :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('TS01_P1_S1_M1')
                        ],),
                        Row(children: <Widget>[
                          new Text('prevBMID :'),
                          SizedBox(height: 20),
                          new Text('   '),
                          new Text('TS01_P1_S1_M3')
                        ],),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('951127')
                                ]),
                                Row(children: <Widget>[
                                  new Text('perform :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('20%')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-01-05')
                                // ],)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('moduleLog :'),
                                Row(children: <Widget>[
                                  new Text('personID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('950310')
                                ]),
                                Row(children: <Widget>[
                                  new Text('carID :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('03가 0310')
                                ],),
                                Row(children: <Widget>[
                                  new Text('perform :'),
                                  SizedBox(height: 20),
                                  new Text('   '),
                                  new Text('70%')
                                ],),
                                // Row(children: <Widget>[
                                //   new Text('startDate :'),
                                //   SizedBox(height: 20),
                                //   new Text('   '),
                                //   new Text('2013-05-07')
                                // ],)
                              ],
                            ),
                          ),
                        ),
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

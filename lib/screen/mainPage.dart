import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
import './myPage.dart';
import './recoveryRate.dart';
import '../widget/battery_widget.dart';

class MainPage extends StatelessWidget{
  Widget build(BuildContext context){
    return MainScreen();
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    int _currentIndex = 1;

    void onTabTapped(int index){
      setState((){
        _currentIndex = index;
      });
    }
    
  @override
  Widget build(BuildContext context) {
    
    /*void showBottom() {
      showModalBottomSheet<void>(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(30.0),
            topRight: const Radius.circular(30.0),  
          ),
        ),
        builder: (BuildContext context) {
          return Container(
            height: 140.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(30.0),
                topRight: const Radius.circular(30.0),
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                AppBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0),  
                    ),
                  ),
                  elevation: 0.0,
                  leading: Container(),
                  actions: [
                    new IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.clear,
                      ),
                      color: Color.fromARGB(0xFF, 0xFF, 0x8D, 0x88),
                    ),
                  ],
                  title: new Text(
                    '검사지 종류',
                    style: TextStyle(
                      fontFamily: 'Spoqa Han San',
                      fontSize: 14.0,
                      color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  centerTitle: true,
                  backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
                ),      
                Divider(indent:10, endIndent: 10),
                Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Spacer(),
                        ButtonTheme(
                          minWidth: 130.0,
                          height: 43.0,
                          child: new FlatButton(
                              child: new Text(
                                '수술전',
                                style: TextStyle(
                                  fontFamily: 'Spoqa Han San',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                  color: Color.fromARGB(0xFF, 0x3B, 0x3B, 0x4D),
                                ),
                              ),
                              color: Color.fromARGB(0xFF, 0xFF, 0xF0, 0xED),
                              disabledColor:
                                  Color.fromARGB(0xFF, 0xFF, 0xF0, 0xED),
                              onPressed: null,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(7.0))),
                        ),
                        Spacer(),
                        ButtonTheme(
                            minWidth: 130.0,
                            height: 43.0,
                            child: new FlatButton(
                                child: new Text(
                                  '수술후',
                                  style: TextStyle(
                                    fontFamily: 'Spoqa Han San',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Color.fromARGB(0xFF, 0x3B, 0x3B, 0x4D),
                                  ),
                                ),
                                color: Color.fromARGB(0xFF, 0xFF, 0xF0, 0xED),
                                disabledColor:
                                    Color.fromARGB(0xFF, 0xFF, 0xF0, 0xED),
                                onPressed: null,
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(7.0)))),
                        Spacer(),
                      ],
                    ),
                  )
              ],
            ),
          );
        },
      );
    }*/
  
    Widget myRecord = Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        automaticallyImplyLeading: false,
        title: Text(
          'BATTERY',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Montserrat-SemiBold',
            letterSpacing: 0.08,
            color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none,
            ),
            onPressed: null,
          ),
        ],
      ),
      body:Container(
        color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AppBar(
              elevation:0.0,
              backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
              automaticallyImplyLeading: false,
              title: Text(
                '배터리 만료날짜 해당 리스트',
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Spoqa Han San',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.08,
                  color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                ),
                textAlign: TextAlign.left,
              ),
              centerTitle: false,
            ),
            Container(
              child: DataTableWidget(),
              height: 450,
            )
          ],
        ),
      ),
    );

    final List<Widget> _children = [
      RecoveryRate(),
      myRecord,
      MyPage(),
    ];
    

    return Scaffold(
      body: _children[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        selectedFontSize: 10.6,
        unselectedFontSize: 10.6,
        selectedItemColor: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart,
              color: Color.fromARGB(0xFF, 0x88, 0x88, 0x88),
            ),
            activeIcon: Icon(
              Icons.pie_chart,
              color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
              ),
            title: Text('배터리회수율'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
             Icons.list,
              color: Color.fromARGB(0xFF, 0x88, 0x88, 0x88),
            ),
            activeIcon: Icon(
              Icons.list,
              color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
            ),
            title: Text('만료날짜'),
          ),
          
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                'images/combined_shape.png'
              ),
              color: Color.fromARGB(0xFF, 0x88, 0x88, 0x88),
              width: 20,
              height: 22,  
            ),
            activeIcon: Image(
              image: AssetImage(
                'images/combined_shape.png'
              ),
              color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
              width: 20,
              height: 22,  
            ),
            title: Text('마이페이지'),
          ),
        ],
      ),
    );    
  }
}
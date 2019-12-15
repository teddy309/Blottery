import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
import './myPage.dart';
import './recoveryRate.dart';
//import '../widget/battery_widget.dart';
import 'category01.dart';
import 'category02.dart';
import 'category03.dart';
import 'category04.dart';

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
  TabController _tabController;
  ScrollController _scrollViewController;
 
  void onTabTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }
    
  @override
  Widget build(BuildContext context) {
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
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text(
                'BATTERY',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                ),
              ),
              pinned: true,
              floating: true,
              forceElevated: boxIsScrolled,
              bottom: TabBar(
                isScrollable: true,
                labelColor: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                indicatorColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                tabs: <Widget>[
                  Tab(text: '   만료날짜   '),
                  Tab(text: '   상태별   '),
                  Tab(text: '   제조사별   '),
                  Tab(text: '   지역별   '),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Category01(),
            Category02(),
            Category03(),
            Category04(),
          ],
          controller: _tabController,
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
             Icons.list,
              color: Color.fromARGB(0xFF, 0x88, 0x88, 0x88),
            ),
            activeIcon: Icon(
              Icons.list,
              color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
            ),
            title: Text('배터리리스트'),
          ),
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
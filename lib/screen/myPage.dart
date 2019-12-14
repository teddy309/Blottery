import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MyPageScreen();
  }
}

class MyPageScreen extends StatefulWidget {
  @override
  _MyPageScreenState createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  String _mail = 'test@test.com';

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      appBar: AppBar(
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
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      ),
      body: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 23, left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      child: Text(
                        '계정',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'AppleSD Gothic Semi Bold',
                          letterSpacing: 0.08,
                          color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                        ),
                      ),
                    ),
                    Container(                
                      margin: const EdgeInsets.only(bottom: 20),                
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlatButton(
                            child: Text(
                              '계정 변경',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'AppleSD Gothic Light',
                                letterSpacing: 0.08,
                                color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/changeAccount');
                            },
                          ),
                          Text(
                            '$_mail',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'AppleSD Gothic Light',
                              letterSpacing: 0.08,
                              color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                            ),                      
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      height: 25,
                      child: FlatButton(
                        child: Text(
                          '비밀번호 재설정',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'AppleSD Gothic Light',
                            letterSpacing: 0.08,
                            color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/changePW');
                        },
                      ),          
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      height: 25,
                      child: FlatButton(
                        child: Text(
                          '간편 로그인 설정',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'AppleSD Gothic Light',
                            letterSpacing: 0.08,
                            color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/logInSetting');
                        },
                      ),          
                    ),
                  ],
                ),
              ),     
            Divider(
                height: 2,
                color: Color.fromARGB(0xFF, 0xD6, 0xD6, 0xD6),
              ),
            Container(
                margin: const EdgeInsets.only(top: 23, left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      child: Text(
                        '알림',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'AppleSD Gothic Semi Bold',
                          letterSpacing: 0.08,
                          color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 25),                
                      height: 25,
                      child: FlatButton(
                        child: Text(
                          '알림 관리',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'AppleSD Gothic Light',
                            letterSpacing: 0.08,
                            color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/manageAlarm');
                        },
                      ),          
                    ),
                  ],
                ),
              ),                   
            Divider(
                height: 2,
                color: Color.fromARGB(0xFF, 0xD6, 0xD6, 0xD6),
              ),
            Container(
                margin: const EdgeInsets.only(top: 36, left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      child: Text(
                        '기타',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'AppleSD Gothic Semi Bold',
                          letterSpacing: 0.08,
                          color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      height: 25,
                      child: FlatButton(
                        child: Text(
                          '법적 고지',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'AppleSD Gothic Light',
                            letterSpacing: 0.08,
                            color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                          ),
                        ),
                        onPressed: () {},
                      ),          
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      height: 25,
                      child: FlatButton(
                        child: Text(
                          '로그아웃',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'AppleSD Gothic Light',
                            letterSpacing: 0.08,
                            color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),          
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),                
                      height: 25,
                      child: FlatButton(
                        child: Text(
                          '회원탈퇴',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'AppleSD Gothic Light',
                            letterSpacing: 0.08,
                            color: Color.fromARGB(0xFF, 0x55, 0x55, 0x55),
                          ),
                        ),
                        onPressed: () {},
                      ),          
                    ),
                  
                  ],
                ),
              ),                                 
          ],
        ),
      ),
    );
  }
}

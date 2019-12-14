import 'package:flutter/material.dart';

class LogInSetting extends StatelessWidget {
  Widget build(BuildContext context) {
    return FastLogIn();
  }
}

class FastLogIn extends StatefulWidget {
  @override
  _FastLogInState createState() => _FastLogInState();
}

class _FastLogInState extends State<FastLogIn> {
  static bool isKakaoOn = false;
  static bool isNaverOn = false;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
            size: 24,
          ),
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.pop(context);
          },
        ),
        title: Text(
          '간편 로그인 설정',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Nanum Gothic',
            letterSpacing: 0.09,
            color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
          ),
        ),
        titleSpacing: 0.09,
        centerTitle: true,
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 17, right: 33, top: 23, bottom: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10,),
                      child: Image(
                        image: AssetImage(
                          'images/kakao.png',
                        ),
                        width: 28,
                        height: 28,
                      ),
                    ),
                    Text(
                      '카카오톡',
                      style: TextStyle(
                        color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                        fontSize: 15,
                        fontFamily: 'Nanum Gothic',
                        letterSpacing: 0.09,
                      ),
                    ),
                  ],
                ),
                Switch(
                  value: isKakaoOn,
                  onChanged:(value){
                    setState((){
                      isKakaoOn = value;
                    });
                  },
                  activeColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                ),
              ],
            ),
          ),
          Divider(height: 2, color: Color.fromARGB(0xFF,0xD6,0xD6,0xD6)),
          Container(
            margin: const EdgeInsets.only(left: 17, right: 33, top: 23, bottom: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10,),
                      child: Image(
                        image: AssetImage(
                          'images/naver.png',
                        ),
                        width: 28,
                        height: 28,
                      ),
                    ),
                    Text(
                      '네이버',
                      style: TextStyle(
                        color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                        fontSize: 15,
                        fontFamily: 'Nanum Gothic',
                        letterSpacing: 0.09,
                      ),
                    ),
                  ],
                ),
                Switch(
                  value: isNaverOn,
                  onChanged:(value){
                    setState((){
                      isNaverOn = value;
                    });
                  },
                  activeColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                ),
              ],
            ),
          ),
          Divider(height: 2, color: Color.fromARGB(0xFF,0xD6,0xD6,0xD6)),
          Container(
            margin: const EdgeInsets.only(top: 45),
            width: 248,
            height: 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(const Radius.circular(30.0)),
              ),
              child: Text(
                '확인',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Nanum Gothic Bold',
                  letterSpacing: 0.08,
                  color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
                ),
              ),
              color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
              textColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

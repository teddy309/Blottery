import 'package:flutter/material.dart';

class AlarmSetting extends StatelessWidget {
  Widget build(BuildContext context) {
    return ManageAlarm();
  }
}

class ManageAlarm extends StatefulWidget {
  @override
  _ManageAlarmState createState() => _ManageAlarmState();
}

class _ManageAlarmState extends State<ManageAlarm> {
  static bool analysis = false;
  static bool infoState = false;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
            size: 24,
          ),
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.pop(context);
          },
        ),
        title: Text(
          '알림 관리',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '폐배터리 만료 차량 알림',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Nanum Gothic',
                        color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 250,
                      child: Text(
                        '당일 폐배터리 수명이 만료된 차량 여부 실시간 알림',
                        style: TextStyle(
                          color: Color.fromARGB(0xFF, 0x7D, 0x7D, 0x7D),
                          fontSize: 12,
                          fontFamily: 'Nanum Gothic',
                          letterSpacing: 0.08,
                        ),
                      ),
                    ),
                  ],
                ),
                Switch(
                  value: analysis,
                  onChanged:(value){
                    setState((){
                      analysis = value;
                    });
                  },
                  activeColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                ),
              ],
            ),
          ),
          Divider(height: 2, color: Color.fromARGB(0xFF,0xD6,0xD6,0xD6)),
          /*Container(
            margin: const EdgeInsets.only(left: 17, right: 33, top: 23, bottom: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '혜택 등 유용한 정보 안내',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Nanum Gothic',
                        color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        '건강 정보 및 혜택 알림',
                        style: TextStyle(
                          color: Color.fromARGB(0xFF, 0x7D, 0x7D, 0x7D),
                          fontSize: 12,
                          fontFamily: 'Nanum Gothic',
                          letterSpacing: 0.08,
                        ),
                      ),
                    ),
                  ],
                ),
                Switch(
                  value: infoState,
                  onChanged:(value){
                    setState((){
                      infoState = value;
                    });
                  },
                  activeColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                ),
              ],
            ),
          ),*/
          Divider(height: 2, color: Color.fromARGB(0xFF,0xD6,0xD6,0xD6)),
        ],
      ),
    );
  }
}

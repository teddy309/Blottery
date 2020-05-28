import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangePW();
  }
}


class ChangePW extends StatefulWidget {
  @override
  _ChangePWState createState() => _ChangePWState();
}

class _ChangePWState extends State<ChangePW> {
  TextEditingController currentPWController = new TextEditingController();
  TextEditingController newPWController = new TextEditingController();
  TextEditingController checkPWController = new TextEditingController();

  FocusNode currentPWNode = new FocusNode();
  FocusNode newPWNode = new FocusNode();
  FocusNode checkPWNode = new FocusNode();

  bool isPWSubmitted = false;
  bool isNewPWSubmitted = false;
  bool isCheckPWSubmitted = false;
  
  bool isPWValid = false;
  bool isNewPWValid = false;
  bool isCheckPWValid = false;
  
  bool next = false;

  String _currentPW = '';
  String _newPW = '';
  String _checkPW = '';

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
          '비밀번호 재설정',
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
          alignment: Alignment.centerLeft,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 25, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '현재 비밀번호',
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.92,
                  color: Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
                ),
                textAlign: TextAlign.start,
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0x26, 0x26, 0x28),
                  fontSize: 16,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0,
                ),
                onChanged: (pw) {
                  _currentPW = pw;
                  _pwSubmitted(pw);
                  _next();
                },
                onSubmitted: (pw) {
                  _currentPW = pw;
                  _pwSubmitted(pw);
                  _next();
                  FocusScope.of(context).requestFocus(currentPWNode);
                },
                obscureText: true,
                cursorColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                controller: currentPWController,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                  )),
                ),
              ),
            ],
          ),
        ),
          Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '새로운 비밀번호',
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.92,
                  color: Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0x26, 0x26, 0x28),
                  fontSize: 16,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0,
                ),
                onChanged: (newPW) {
                  _newPW = newPW;
                  _newPWSubmitted(newPW);
                  _next();
                },
                onSubmitted: (newPW) {
                  _newPW = newPW;
                  _newPWSubmitted(newPW);
                  _next();
                  FocusScope.of(context).requestFocus(newPWNode);
                },
                obscureText: true,
                cursorColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                controller: newPWController,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                  )),
                ),
              ),
            ],
          ),
        ),
          Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '새로운 비밀번호 재입력',
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.92,
                  color: Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
                ),
                textAlign: TextAlign.start,
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0x26, 0x26, 0x28),
                  fontSize: 16,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0,
                ),
                onChanged: (checkPW) {
                  _checkPW = checkPW;
                  _checkPWSubmitted(checkPW);
                  _next();
                },
                onSubmitted: (checkPW) {
                  _checkPW = getCheckPW();
                  setPW(checkPW);
                  _checkPWSubmitted(checkPW);
                  _next();
                  FocusScope.of(context).requestFocus(checkPWNode);
                },
                obscureText: true,
                cursorColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                controller: checkPWController,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                  )),
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
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
              color: next ? Color.fromARGB(0xFF, 0x00, 0x00, 0x99) : Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
              textColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
              onPressed: () {
                if(next){            
                  // Scaffold.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text('비밀번호 변경이 완료되었습니다'),
                  //   ),
                  // );
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.pop(context);
                  Navigator.pop(context);
                }
              },
            ),
          ),
        ],
      ),  
    );
  }

  String getPW() {
    return _currentPW;
  }

  String getNewPW() {
    return _newPW;
  }

  String getCheckPW() {
    return _checkPW;
  }

  void setPW(String pw) {
    setState(() {
      _currentPW = pw;
    });
  }

  void setNewPW(String newPW) {
    setState(() {
      _newPW = newPW;
    });
  }

  void setCheckPW(String checkPW) {
    setState(() {
      _checkPW = checkPW;
    });
  }

  void _pwSubmitted(String pw) {
    _pwValid(pw);
    setState(() {
      if(isPWValid){
        isPWSubmitted = true;
      }
      else{
        isPWSubmitted = false;
      }
    });
  }

  void _newPWSubmitted(String newPW) {
    _newPWValid(newPW);
    setState(() {
      if(isNewPWValid){
        isNewPWSubmitted = true;
      }
      else{
        isNewPWSubmitted = false;
      }
    });
  }

  void _checkPWSubmitted(String checkPW) {
    _checkPWValid(checkPW);
    setState(() {
      if(isCheckPWValid){
        isCheckPWSubmitted = true;
      }
      else{
        isCheckPWSubmitted = false;
      }
    });
  }

  void _pwValid(String pw){
    setState((){
      if(pw != _newPW){
        isPWValid = true;
      }
      else {
        isPWValid = false;
      }
    });
  }

  void _newPWValid(String newPW){
    setState((){
      if(newPW.length > 10 && (newPW != _currentPW)){
        isNewPWValid = true;
      }
      else {
        isNewPWValid = false;
      }
    });
  }

  void _checkPWValid(String checkPW){
    setState((){
      if((checkPW == _newPW) && (_newPW != _currentPW)){
        isCheckPWValid = true;
      }
      else {
        isCheckPWValid = false;
      }
    });
  }

  void _next(){
    setState((){
      if(isPWSubmitted & isNewPWSubmitted & isCheckPWSubmitted){
        next = true;
      }
      else{
        next = false;
      }
    });
  }
}
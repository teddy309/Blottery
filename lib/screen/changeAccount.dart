import 'package:flutter/material.dart';

class ChangeAccount extends StatelessWidget {
  Widget build(BuildContext context) {
    return NewAccount();
  }
}


class NewAccount extends StatefulWidget {
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  TextEditingController mailController = new TextEditingController();
  TextEditingController newMailController = new TextEditingController();
  
  FocusNode mailNode = new FocusNode();
  FocusNode newMailNode = new FocusNode();
  
  bool isMailSubmitted = false;
  bool isNewMailSubmitted = false;
  
  bool isMailValid = false;
  bool isNewMailValid = false;
  
  bool next = false;

  String _mail = '';
  String _newMail = '';

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
          '계정변경',
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
                '현재 사용중인 계정',
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
                onChanged: (mail) {
                  _mail = mail;
                  _mailSubmitted(mail);
                  _next();
                },
                onSubmitted: (mail) {
                  _mail = mail;
                  _mailSubmitted(mail);
                  _next();
                  FocusScope.of(context).requestFocus(mailNode);
                },
                cursorColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                controller: mailController,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
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
                '새로운 이메일 주소',
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
                onChanged: (newMail) {
                  _newMail = newMail;
                  _newMailSubmitted(newMail);
                  _next();
                },
                onSubmitted: (newMail) {
                  _newMail = newMail;
                  _newMailSubmitted(newMail);
                  _next();
                  FocusScope.of(context).requestFocus(newMailNode);
                },
                cursorColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                controller: newMailController,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                  )),
                ),
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
              color: next ? Color.fromARGB(0xFF, 0xFC, 0x75, 0x69) : Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
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

  String getMail() {
    return _mail;
  }

  String getNewMail() {
    return _newMail;
  }

  void setMail(String mail) {
    setState(() {
      _mail = mail;
    });
  }

  void setNewMail(String newMail) {
    setState(() {
      _newMail = newMail;
    });
  }

  void _mailSubmitted(String mail) {
    _mailValid(mail);
    setState(() {
      if(isMailValid){
        isMailSubmitted = true;
      }
      else{
        isMailSubmitted = false;
      }
    });
  }

  void _newMailSubmitted(String newMail) {
    _newMailValid(newMail);
    setState(() {
      if(isNewMailValid){
        isNewMailSubmitted = true;
      }
      else{
        isNewMailSubmitted = false;
      }
    });
  }

  void _mailValid(String mail){
    setState((){
      if(mail != _newMail){
        isMailValid = true;
      }
      else {
        isMailValid = false;
      }
    });
  }

  void _newMailValid(String newMail){
    setState((){
      if(newMail != _mail){
        isNewMailValid = true;
      }
      else {
        isNewMailValid = false;
      }
    });
  }

  void _next(){
    setState((){
      if(isMailSubmitted & isNewMailSubmitted){
        next = true;
      }
      else{
        next = false;
      }
    });
  }
}
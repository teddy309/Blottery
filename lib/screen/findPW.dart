import 'package:flutter/material.dart';

class FindPassword extends StatelessWidget {
  Widget build(BuildContext context) {
    return FindPW();
  }
}


class FindPW extends StatefulWidget {
  @override
  _FindPWState createState() => _FindPWState();
}

class _FindPWState extends State<FindPW> {
  TextEditingController mailController = new TextEditingController();
  
  FocusNode mailNode = new FocusNode();
  
  bool isMailSubmitted = false;
  
  bool isMailValid = false;
  
  bool next = false;

  String _mail = '';
  
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
          '비밀번호 찾기',
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
      body: GestureDetector(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top:33),
            child: Text(
              '가입하셨던 이메일을 통해\n새로운 비밀번호를 발급해드릴게요',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Nanum Gothic',
                color: Color.fromARGB(0xFF, 0x77, 0x77, 0x77),
                letterSpacing: -0.11,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이메일 주소',
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.08,
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
                  _mailValid(mail);
                  _next();
                },
                onSubmitted: (mail) {
                  _mailValid(mail);
                  _next();
                  FocusScope.of(context).requestFocus(mailNode);
                },
                keyboardType: TextInputType.emailAddress,
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
        ],
      ),
      onTap:(){
        FocusScope.of(context).requestFocus();
      }
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        child: FlatButton(
          child: Text(
            '새로운 비밀번호 받기',
          ),
          color: next ? Color.fromARGB(0xFF, 0xFC, 0x75, 0x69) : Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
          textColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
          onPressed: () {
            if(next){            
              FocusScope.of(context).requestFocus(FocusNode());
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }

  String getMail() {
    return _mail;
  }

  void setMail(String mail) {
    setState(() {
      _mail = mail;
    });
  }

  void _mailValid(String mail){
    setState((){
      if(mail.length > 10){
        isMailValid = true;
      }
      else {
        isMailValid = false;
      }
    });
  }

  void _next(){
    setState((){
      if(isMailValid){
        next = true;
      }
      else{
        next = false;
      }
    });
  }

}
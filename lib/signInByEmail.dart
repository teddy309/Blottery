import 'package:flutter/material.dart';

class SignInByEmail extends StatelessWidget {
  Widget build(BuildContext context) {
    return SignInEmail();
  }
}

class SignInEmail extends StatefulWidget {
  @override
  _SignInEmailState createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {
  TextEditingController mailController = new TextEditingController();
  TextEditingController pwController = new TextEditingController();

  FocusNode mailNode = new FocusNode();
  FocusNode pwNode = new FocusNode();

  bool isMailSubmitted = false;
  bool isPWSubmitted = false;
  
  bool isMailValid = false;
  bool isPWValid = false;
  
  bool next = false;

  String _mail = '';
  String _pw = '';

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
          '이메일로 로그인',
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
                  _mailValid(mail);
                  _next();
                },
                onSubmitted: (mail) {
                  _mailValid(mail);
                  _next();
                  FocusScope.of(context).requestFocus(mailNode);
                },
                keyboardType: TextInputType.emailAddress,
                cursorColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                controller: mailController,
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
          margin: const EdgeInsets.only(top: 29, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '비밀번호',
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
                  _pwValid(pw);
                  _next();
                },
                onSubmitted: (pw) {
                  _pwValid(pw);
                  _next();
                  FocusScope.of(context).requestFocus(pwNode);
                },
                obscureText: true,
                cursorColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x99),
                controller: pwController,
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
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(top:25, right: 20),
            child: FlatButton(
              child: Text(
                '비밀번호 기억이 안나요 >',
                style: TextStyle(
                color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),                
                fontSize: 14,
                fontFamily: 'Nanum Gothic',
                letterSpacing: 0.08,
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/findPW');
              },
            )
          )
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
            '완료',
          ),
          color: next ? Color.fromARGB(0xFF, 0x00, 0x00, 0x99) : Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
          textColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
          onPressed: () {
            if(next){            
              FocusScope.of(context).requestFocus(FocusNode());
              Navigator.pushReplacementNamed(context, '/mainPage',);
            }
          },
        ),
      ),
    );
  }

  String getMail() {
    return _mail;
  }

  String getPW() {
    return _pw;
  }

  void setMail(String mail) {
    setState(() {
      _mail = mail;
    });
  }

  void setPW(String pw) {
    setState(() {
      _pw = pw;
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

  void _pwValid(String pw){
    setState((){
      if(pw.length > 10){
        isPWValid = true;
      }
      else {
        isPWValid = false;
      }
    });
  }

  void _next(){
    setState((){
      if(isMailValid & isPWValid){
        next = true;
      }
      else{
        next = false;
      }
    });
  }

}
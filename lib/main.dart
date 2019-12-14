import 'package:flutter/material.dart';
import './IntroScreen.dart';
import './SplashScreen.dart';
import './recoveryRate.dart';
import './signIn.dart';
import './serviceAgreement.dart';
import './serviceAgrInfo.dart';
import './personalInfo.dart';
import './signUpByEmail.dart';
import './signInByEmail.dart';
import './findPW.dart';
import './myPage.dart';
import './mainPage.dart';
import './search.dart';
import './changePw.dart';
import './logInsetting.dart';
import './manageAlarm.dart';

void main() => runApp(BlotteryApp());

class BlotteryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blottery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/signIn': (context) => SignIn(),
        '/serviceAgr': (context) => ServiceAgr(),
        '/serviceAgrInfo': (context) => ServiceAgrInfo(),
        '/personalInfo': (context) => PersonalInfo(),
        '/signUpByEmail': (context) => SignUpByEmail(),
        '/signInByEmail': (context) => SignInByEmail(),
        '/findPW': (context) => FindPassword(),
        '/mainPage': (context) => MainPage(),
        '/myPage': (context) => MyPage(),
        '/IntroScreen': (context) => IntroScreen(),
        '/knowledge': (context) => RecoveryRate(),
        //'/search' : (context) => Search(),
        '/changePW' : (context) => ChangePassword(),
        '/loginSetting' : (context) => LogInSetting(),
        '/manageAlarm' : (context) => AlarmSetting(),
      },
    );
  }
}

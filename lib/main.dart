import 'package:flutter/material.dart';
import 'screen/IntroScreen.dart';
import 'screen/SplashScreen.dart';
import 'screen/recoveryRate.dart';
import 'screen/signIn.dart';
import 'screen/serviceAgreement.dart';
import 'screen/serviceAgrInfo.dart';
import 'screen/personalInfo.dart';
import 'screen/signUpByEmail.dart';
import 'screen/signInByEmail.dart';
import 'screen/findPW.dart';
import 'screen/myPage.dart';
import 'screen/mainPage.dart';
//import 'screen/search.dart';
import 'screen/changePw.dart';
import 'screen/logInsetting.dart';
import 'screen/manageAlarm.dart';

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

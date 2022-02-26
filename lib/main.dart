import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutme_screen.dart';
import 'package:flutter_application_1/constants/conts_routes.dart';
import 'package:flutter_application_1/contact_screen.dart';
import 'package:flutter_application_1/main_Screen.dart';
import 'package:flutter_application_1/portfolio_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color(0xff222222),
        primaryColor: Color(0xffff0387),
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white, fontFamily: 'Roboto', fontSize: 24),
          headline2: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300,
              fontSize: 16),   
          headline3: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          headline4: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 12),
          headline5: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w800,
            fontSize: 52,
          ),
        ),
      ),
      initialRoute: Myroutes.mainScreen,
      routes: {
        Myroutes.mainScreen: (context) => Mainscreen(),
        Myroutes.portfolioScreen: (context) => PortfolioScreen(),
        Myroutes.aboutMeScreen: (context) => AboutMe(),
        Myroutes.contactScreen: (context) => ContactScreen(),
      },
    );
  }
}

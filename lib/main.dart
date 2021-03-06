import 'package:driveplan/pages/additional_material.dart';
import 'package:driveplan/pages/home_page.dart';
import 'package:driveplan/pages/impressum.dart';
import 'package:driveplan/pages/login_page.dart';
import 'package:driveplan/pages/my_account_page.dart';
import 'package:driveplan/pages/my_calendar.dart';
import 'package:driveplan/pages/my_documents.dart';
import 'package:driveplan/pages/my_hours.dart';
import 'package:driveplan/pages/questions_page.dart';
import 'package:driveplan/pages/setting_page.dart';
import 'package:driveplan/pages/splash_screen.dart';
import 'package:driveplan/pages/statistik.dart';
import 'package:driveplan/pages/zusatz_training.dart';
import 'package:flutter/material.dart';

import 'pages/questions2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(136, 14, 79, .1),
      100: Color.fromRGBO(136, 14, 79, .2),
      200: Color.fromRGBO(136, 14, 79, .3),
      300: Color.fromRGBO(136, 14, 79, .4),
      400: Color.fromRGBO(136, 14, 79, .5),
      500: Color.fromRGBO(136, 14, 79, .6),
      600: Color.fromRGBO(136, 14, 79, .7),
      700: Color.fromRGBO(136, 14, 79, .8),
      800: Color.fromRGBO(136, 14, 79, .9),
      900: Color.fromRGBO(136, 14, 79, 1),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fahren Lernen',
      theme: ThemeData(
          primarySwatch: MaterialColor(Colors.grey[300].value, color),
          primaryColor: Colors.blue[900], // blue
          accentColor: Colors.blue[300], // green
          cardTheme: CardTheme(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue[900], width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepPurple, //  <-- dark color
            textTheme: ButtonTextTheme
                .primary, //  <-- this auto selects the right color
          ),
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.white)),
          scaffoldBackgroundColor: Colors.grey[400],
      ),
      routes: {
        '/': (context) => SplashScreen(),
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        QuestionsPage.routeName: (context) => QuestionsPage(),
        Questions2Page.routeName: (context) => Questions2Page(),
        MyAccount.routeName: (context) => MyAccount(),
        MyCalendar.routeName: (context) => MyCalendar(),
        MyDocuments.routeName: (context) => MyDocuments(),
        MyHours.routeName: (context) => MyHours(),
        SettingPage.routeName: (context) => SettingPage(),
        Statistik.routeName: (context) => Statistik(),
        ZusatzTraining.routeName: (context) => ZusatzTraining(),
        AdditionalTrainingPage.routeName: (context) => AdditionalTrainingPage(),
        Impressum.routeName: (context) => Impressum(),
      },
      initialRoute: '/',
    );
  }
}

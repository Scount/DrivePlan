import 'package:driveplan/pages/home_page.dart';
import 'package:flutter/material.dart';

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
          accentColor: Colors.green[300], // green
          cardTheme: CardTheme(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue[900], width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
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
          scaffoldBackgroundColor: Colors.grey[400]),
      home: HomePage(),
    );
  }
}

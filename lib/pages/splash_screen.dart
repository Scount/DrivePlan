import 'dart:async';

import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(height: 100),
              Image(
                image: AssetImage('assets/FahrenLernenLogo.png'),
                width: MediaQuery.of(context).size.width - 100,
                height: MediaQuery.of(context).size.width - 100,
                color: Colors.white,
              ),
              Center(
                child: Text(
                  "Fahren Lernen",
                  style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:driveplan/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Bitte melden Sie sich mit ihrem Code an, den Sie von der Fahrschule bekommen haben",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  hoverColor: Colors.white,
                  border: new OutlineInputBorder(borderSide: new BorderSide(color: Colors.white)),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

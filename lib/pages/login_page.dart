import 'package:driveplan/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  static String routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage('assets/FahrenLernenLogo.png'),
                    width: MediaQuery.of(context).size.width - 100,
                    height: MediaQuery.of(context).size.width - 100,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Fahren Lernen",
                    style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
                /*  Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Bitte melden Sie sich mit ihrem Code an, den Sie von der Fahrschule bekommen haben",
                          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),*/
              ],
            )),
            Center(
              child: Container(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 20,
                    ),
                    Text(
                      "Bitte melden Sie sich mit ihrem Code an, den Sie von der Fahrschule bekommen haben",
                      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 20,
                    ),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Colors.white,
                        primaryColorDark: Colors.white,
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          border: new OutlineInputBorder(borderSide: new BorderSide(color: Colors.white, width: 2)),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
                      child: Container(width: 300, child: Center(child: Text('Login'))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:driveplan/pages/additional_training_page.dart';
import 'package:driveplan/pages/bonus_training.dart';
import 'package:driveplan/pages/my_account_page.dart';
import 'package:driveplan/pages/questions_page.dart';
import 'package:driveplan/pages/setting_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ausklappen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Zusätzliches Training"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdditionalTrainingPage()),
                );
              },
            ),
            ListTile(
              title: Text("Mein Konto"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAccount()),
                );
              },
            ),
            ListTile(
              title: Text("Einstellungen"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingPage()),
                );
              },
            ),
            ListTile(
              title: Text("Impressum"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Hilfe und Feedback"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Abmelden"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Fahren Lernen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuestionsPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(child: Text("Geführten Lernweg fortsetzen")),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Status: "),
                    Image.network('https://picsum.photos/250?image=9',
                        height: 50)
                  ],
                ),
                Row(
                  children: [
                    Text("Fortschritt: "),
                    Image.network('https://picsum.photos/250?image=9',
                        height: 50)
                  ],
                )
              ],
            ),
          ),
          ausklappen
              ? GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (context) => BonusTraining()));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text("Bonus Training")),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Text("Vertiefe dein Wissen für Theorie und Praxis")
                      ],
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}

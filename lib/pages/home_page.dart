import 'package:driveplan/pages/additional_training_page.dart';
import 'package:driveplan/pages/statistik.dart';
import 'package:driveplan/pages/zusatz_training.dart';
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
              title: Text("Zusatz Materialien"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdditionalTrainingPage()),
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
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        )),
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "Geführten Lernweg fortsetzen",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 50,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Hinweis: "),
                              Container(
                                // color: Colors.red,
                                child: Text("Prüfung nicht empfohlen"),
                              )
                            ],
                          ),
                        ),
                        Text("Fortschritt: "),
                        Container(color: Colors.red, child: Image(image: AssetImage('assets/fortschritt.PNG')))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          ausklappen
              ? GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (context) => ZusatzTraining()));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              )),
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text("Zusatz Training",
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Vertiefe dein Wissen für Theorie und Praxis"),
                          ),
                        )
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

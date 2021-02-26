import 'package:driveplan/pages/additional_material.dart';
import 'package:driveplan/pages/impressum.dart';
import 'package:driveplan/pages/login_page.dart';
import 'package:driveplan/pages/statistik.dart';
import 'package:driveplan/pages/zusatz_training.dart';
import 'package:driveplan/pages/my_account_page.dart';
import 'package:driveplan/pages/questions_page.dart';
import 'package:driveplan/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

enum Menu { materialien, einstellungen, impressum, hilfe, ausloggen }

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  static String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ausklappen = true;
  bool autobahn = false;
  bool abbiegen = false;
  bool verkehrsmittel = false;
  bool fussgaengerueberwege = false;
  bool vorfahrt = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        title: Text("Fahren Lernen"),
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle), onPressed: () => Navigator.pushNamed(context, MyAccount.routeName)),
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case Menu.materialien:
                  Navigator.pushNamed(context, AdditionalTrainingPage.routeName);
                  break;
                case Menu.einstellungen:
                  Navigator.pushNamed(context, SettingPage.routeName);
                  break;
                case Menu.impressum:
                  Navigator.pushNamed(context, Impressum.routeName);
                  break;
                case Menu.hilfe:
                  break;
                case Menu.ausloggen:
                  Navigator.popUntil(context, (route) => route.settings.name == LoginPage.routeName);
                  break;
                default:
              }
            },
            itemBuilder: (context) => <PopupMenuEntry<Menu>>[
              const PopupMenuItem(
                value: Menu.materialien,
                child: Text("Zusatz Materialien"),
              ),
              const PopupMenuItem(
                value: Menu.einstellungen,
                child: Text("Einstellungen"),
              ),
              const PopupMenuItem(
                value: Menu.hilfe,
                child: Text("Hilfe"),
              ),
              const PopupMenuItem(
                value: Menu.impressum,
                child: Text("Impressum"),
              ),
              const PopupMenuItem(
                value: Menu.ausloggen,
                child: Text("Ausloggen"),
              ),
            ],
          ),
        ],
        centerTitle: true,
      ),
      body: body(),
    );
  }

  Widget body() {
    return ResponsiveGridRow(children: [
      ResponsiveGridCol(child: questions(), sm: 6),
      ausklappen ? ResponsiveGridCol(child: zusatzTraining(), sm: 6) : Container()
    ]);
  }

  Widget questions() {
    return Card(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuestionsPage.routeName);
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Text("Grundlagen für Theorie und Praxis"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Fortschritt: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        LinearProgressIndicator(
                          value: .6,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                          backgroundColor: Colors.grey,
                          minHeight: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget zusatzTraining() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ZusatzTraining.routeName);
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
                        child: Text("Zusatz Training", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
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
    );
  }

  Widget drawer() {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 25,
            ),
            Text(
              "Themenbereiche",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(height: 10),
            Row(
              children: [
                autobahn
                    ? IconButton(
                        icon: Icon(Icons.keyboard_arrow_up),
                        onPressed: () {
                          setState(() {
                            autobahn = false;
                          });
                        })
                    : IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            autobahn = true;
                          });
                        }),
                Text(
                  "Autobahn",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            autobahn
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 25, child: Text('Einfahren')),
                          Container(height: 25, child: Text('Ausfahren')),
                          Container(height: 25, child: Text('Überholen')),
                        ],
                      ),
                    ),
                  )
                : Container(),
            autobahn
                ? Divider(
                    color: Colors.black,
                  )
                : Container(),
            Container(height: 10),
            Row(
              children: [
                abbiegen
                    ? IconButton(
                        icon: Icon(Icons.keyboard_arrow_up),
                        onPressed: () {
                          setState(() {
                            abbiegen = false;
                          });
                        })
                    : IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            abbiegen = true;
                          });
                        }),
                Text("Abbiegen", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            abbiegen
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 25, child: Text('Rechtsabbiegen')),
                          Container(height: 25, child: Text('Linksabbiegen')),
                          Container(height: 25, child: Text('Mehrspurig')),
                        ],
                      ),
                    ),
                  )
                : Container(),
            abbiegen
                ? Divider(
                    color: Colors.black,
                  )
                : Container(),
            Container(height: 10),
            Row(
              children: [
                verkehrsmittel
                    ? IconButton(
                        icon: Icon(Icons.keyboard_arrow_up),
                        onPressed: () {
                          setState(() {
                            verkehrsmittel = false;
                          });
                        })
                    : IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            verkehrsmittel = true;
                          });
                        }),
                Text("Öffentliche Verkehrsmittel", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            verkehrsmittel
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Container(height: 25, child: Text('Haltestellen')),
                  )
                : Container(),
            verkehrsmittel
                ? Divider(
                    color: Colors.black,
                  )
                : Container(),
            Container(height: 10),
            Row(
              children: [
                fussgaengerueberwege
                    ? IconButton(
                        icon: Icon(Icons.keyboard_arrow_up),
                        onPressed: () {
                          setState(() {
                            fussgaengerueberwege = false;
                          });
                        })
                    : IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            fussgaengerueberwege = true;
                          });
                        }),
                Text("Fußgängerüberwege/Bahnübergänge", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            fussgaengerueberwege
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 25, child: Text('Fußgängerüberwege')),
                          Container(height: 25, child: Text('Bahnübergänge')),
                          Container(height: 25, child: Text('Wartepflichts')),
                        ],
                      ),
                    ),
                  )
                : Container(),
            fussgaengerueberwege
                ? Divider(
                    color: Colors.black,
                  )
                : Container(),
            Container(height: 10),
            Row(
              children: [
                vorfahrt
                    ? IconButton(
                        icon: Icon(Icons.keyboard_arrow_up),
                        onPressed: () {
                          setState(() {
                            vorfahrt = false;
                          });
                        })
                    : IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            vorfahrt = true;
                          });
                        }),
                Text("Vorfahrt", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            vorfahrt
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 25, child: Text('rechts vor links')),
                          Container(height: 25, child: Text('Verkehrszeichen')),
                          Container(height: 25, child: Text('Vorfahrtsstraße')),
                        ],
                      ),
                    ),
                  )
                : Container(),
            vorfahrt
                ? Divider(
                    color: Colors.black,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

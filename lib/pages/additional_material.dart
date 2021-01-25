import 'package:flutter/material.dart';

class AdditionalTrainingPage extends StatefulWidget {
  AdditionalTrainingPage({Key key}) : super(key: key);

  @override
  _AdditionalTrainingPageState createState() => _AdditionalTrainingPageState();
}

class _AdditionalTrainingPageState extends State<AdditionalTrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Zusatz Materialien"), centerTitle: true),
        body: ListView(
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Drivers Cam"),
                        content: Text(
                            "Drivers Cam ist eine zusätzliche App und muss seperat aus dem App Store geladen werden"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Verstanden"),
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(child: Center(child: Text("Drivers Cam"))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Gefahren Lernen"),
                        content: Text(
                            "Gefahren Lernen ist eine zusätzliche App und muss seperat aus dem App Store geladen werden"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Verstanden"),
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(child: Center(child: Text("Gefahren Lernen"))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Selbstlerneinheiten & Voting",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 10,
                              ),
                              Text(
                                  "Selbstlerneinheiten und Voting gibt es nur im Theorieunterricht deiner Fahrschule! Zum mitmachen gibt dir dein Fahrlehrer einen Zugangs-Code, den du hier eintragen musst:"),
                              Container(
                                height: 10,
                              ),
                              TextField(),
                              Container(
                                height: 10,
                              ),
                              Text(
                                  "Mit Senden des Codes kann auch deine Anwesnheit am heutigen Theorieunterricht erfasst werden."),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
                                      },
                                      child: Text("Abbrechen")),
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
                                      },
                                      child: Text("Code Senden"))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Card(
                child: Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.how_to_vote),
                        Expanded(child: Center(child: Text("Selbstlerneinheiten & Voting"))),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

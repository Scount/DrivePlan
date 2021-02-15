import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  bool pictureOrVideo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategorie: B"),
        bottom: PreferredSize(
          child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                "Frage: 42/100 - Punkte: 5",
                style: TextStyle(color: Colors.white),
              )),
          preferredSize: new Size.fromHeight(0),
        ),
      ),
      body: OrientationBuilder(
          builder: (context, orientation) => body(orientation)),
    );
  }

  Widget body(Orientation orientation) {
    if (orientation == Orientation.portrait)
      return Column(
        children: [question(), answers(), navigation()],
      );
    else
      return Column(
        children: [
          Expanded(child: Row(children: [question(), answers()])),
          navigation()
        ],
      );
  }

  Widget question() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: !pictureOrVideo
              ? Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Warum sind ältere Fußgänger im Verkehr mehr gefährdet als jüngere?",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              : Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Warum sind ältere Fußgänger im Verkehr mehr gefährdet als jüngere?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Center(
                            child:
                                Text("Hier befindet sich das Bild oder Video")))
                  ],
                ),
        ),
      ),
    );
  }

  Widget answers() {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Expanded(
                      child: Text(
                        "Sie schätzen die Geschwindigkeit von Fahrzeigen oft falsch ein",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Expanded(
                      child: Text(
                        "Sie reagieren oft langsamer und sind weniger beweglich",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Expanded(
                      child: Text(
                        "Sie sehen und hören oft schlechte",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigation() {
    return Container(
      color: Colors.blue[700],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Text(
                    " 41",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
              ),
              onPressed: () {}),
          MaterialButton(
              child: Row(
                children: [
                  Text(
                    "43 ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}

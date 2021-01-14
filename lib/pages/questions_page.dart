import 'package:flutter/material.dart';

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
        title: Text("Questions"),
      ),
      body: Column(
        children: [
          Expanded(
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
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(child: Center(child: Text("Hier befindet sich das Bild oder Video")))
                        ],
                      ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: null),
                        Expanded(
                          child: Text(
                            "Sie schätzen die Geschwindigkeit von Fahrzeigen oft falsch ein",
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: null),
                        Expanded(
                          child: Text(
                            "Sie reagieren oft langsamer und sind weniger beweglich",
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: null),
                        Expanded(child: Text("Sie sehen und hören oft schlechte"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue[700],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}

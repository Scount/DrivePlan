import 'package:driveplan/pages/questions_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Questions2Page extends StatefulWidget {
  static String routeName = '/questions2';

  @override
  _Questions2PageState createState() => _Questions2PageState();
}

class _Questions2PageState extends State<Questions2Page> {
  bool pictureOrVideo = false;
  Color star = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategorie: B"),
        bottom: PreferredSize(
          child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                "Frage: 43/100 - Punkte: 3",
                style: TextStyle(color: Colors.white),
              )),
          preferredSize: new Size.fromHeight(0),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.star,color: star,),
              onPressed: () {
                setState(() {
                  if (star == Colors.white)
                    star = Colors.yellow;
                  else
                    star = Colors.white;
                });
              })
        ],
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
          child: Column(
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
                              fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Center(
                            child:
                                Image.network('https://picsum.photos/250?image=2', height: 250)))
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
                    " 42",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, QuestionsPage.routeName);
              }),
          IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
              ),
              onPressed: () {
                showDialog(
                    context: context, builder: (BuildContext context) => AlertDialog(
                      title: Center(child:Text("Tip")),
                      content: Text("Haha als ob dieser Tip ihnen helfen würde"),
                      actions: [
                        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("OK",style: TextStyle(color: Colors.black),)),
                      ],
                    ));
              }),
          MaterialButton(
              child: Row(
                children: [
                  Text(
                    "44 ",
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

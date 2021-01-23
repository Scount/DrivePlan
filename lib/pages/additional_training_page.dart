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
            Card(
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
            Card(
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
            Card(
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
          ],
        ));
  }
}

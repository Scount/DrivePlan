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
      appBar: AppBar(title: Text("Zusätzliches Training"), centerTitle: true),
      body: ListView(
        children: [
           Card(
              child: Column(
                children: [Text("Drivers Cam")],
              ),
            ),
            Card(
              child: Column(
                children: [Text("Gefahren Lernen")],
              ),
            ),
            Card(
              child: Column(
                children: [Text("Selbstlerneinheiten")],
              ),
            ),
            Card(
              child: Column(
                children: [Text("Voting")],
              ),
            ),
        ],
      )
    );
  }
}

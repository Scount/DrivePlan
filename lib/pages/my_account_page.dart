import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  MyAccount({Key key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mein Konto"),centerTitle: true,),
      body: ListView(
        children: [
           Card(
              child: Column(
                children: [Text("Nachrichten")],
              ),
            ),
            Card(
              child: Column(
                children: [Text("Meine Stunden")],
              ),
            ),
            Card(
              child: Column(
                children: [Text("Meine Dokumente")],
              ),
            ),
            Card(
              child: Column(
                children: [Text("Mein Kalender")],
              ),
            ),
        ],
      ),
    );
  }
}
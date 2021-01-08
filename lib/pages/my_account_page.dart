import 'package:driveplan/pages/my_calendar.dart';
import 'package:driveplan/pages/my_documents.dart';
import 'package:driveplan/pages/my_hours.dart';
import 'package:driveplan/pages/my_messages.dart';
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
      appBar: AppBar(
        title: Text("Mein Konto"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          InkWell(
            child: Card(
              child: Column(
                children: [Text("Nachrichten")],
              ),
            ),
            onTap: () => Navigator.push(
                context, new MaterialPageRoute(builder: (context) => MyMessages())),
          ),
          InkWell(
            child: Card(
              child: Column(
                children: [Text("Meine Stunden")],
              ),
            ),
            onTap: () => Navigator.push(
                context, new MaterialPageRoute(builder: (context) => MyHours())),
          ),
          InkWell(
            child: Card(
              child: Column(
                children: [Text("Dokumentenmappe")],
              ),
            ),
            onTap: () => Navigator.push(
                context, new MaterialPageRoute(builder: (context) => MyDocuments())),
          ),
          InkWell(
            child: Card(
              child: Column(
                children: [Text("Mein Kalender")],
              ),
            ),
            onTap: () => Navigator.push(
                context, new MaterialPageRoute(builder: (context) => MyCalendar())),
          ),
        ],
      ),
    );
  }
}

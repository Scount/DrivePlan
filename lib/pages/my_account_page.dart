import 'package:driveplan/pages/my_calendar.dart';
import 'package:driveplan/pages/my_documents.dart';
import 'package:driveplan/pages/my_hours.dart';
import 'package:driveplan/pages/statistik.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  MyAccount({Key key}) : super(key: key);

  static String routeName = '/my_account';

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
        actions: [
          IconButton(
            icon: Icon(Icons.mail),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          InkWell(
            child: Card(
              child: Container(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.stacked_bar_chart),
                      Expanded(child: Center(child: Text("Statistik"))),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, Statistik.routeName),
          ),
          InkWell(
            child: Card(
              child: Container(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.timelapse),
                      Expanded(child: Center(child: Text("Meine Stunden"))),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, MyHours.routeName),
          ),
          InkWell(
            child: Card(
              child: Container(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.insert_drive_file),
                      Expanded(child: Center(child: Text("Dokumentenmappe"))),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, MyDocuments.routeName),
          ),
          InkWell(
            child: Card(
              child: Container(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today),
                      Expanded(child: Center(child: Text("Mein Kalender"))),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, MyCalendar.routeName),
          ),
        ],
      ),
    );
  }
}

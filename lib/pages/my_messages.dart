import 'package:flutter/material.dart';

class MyMessages extends StatefulWidget {
  MyMessages({Key key}) : super(key: key);

  @override
  _MyMessagesState createState() => _MyMessagesState();
}

class _MyMessagesState extends State<MyMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meine Nachrichten"),),
      body: Container(),
    );
  }
}
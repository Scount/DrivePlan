import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Einstellungen"),centerTitle: true,),
      body: ListView(
        children: [
          Text("einstellung1"),
          Text("einstellung2"),
          Text("heruntergeladenene inhalte"),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Statistik extends StatefulWidget {
  Statistik({Key key}) : super(key: key);

  @override
  _StatistikState createState() => _StatistikState();
}

class _StatistikState extends State<Statistik> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Statistik"),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.bar_chart),
                ),
                Tab(
                  child: Icon(Icons.playlist_add_check),
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            fragenStatistik(),
            pruefungsSimulationen()
          ]),
        ));
  }
  Widget fragenStatistik(){
    return Container();
  }
  Widget pruefungsSimulationen(){
    return Container();
  }
}

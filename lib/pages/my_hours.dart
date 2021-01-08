import 'package:flutter/material.dart';

class MyHours extends StatefulWidget {
  MyHours({Key key}) : super(key: key);

  @override
  _MyHoursState createState() => _MyHoursState();
}

class _MyHoursState extends State<MyHours> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Meine Stunden"),
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
          body: TabBarView(
              children: [theorie(),praxis()])
        ));
  }

  Widget theorie(){
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(title: Text("Grundwissen"),trailing: Text("7/12"), tileColor: Colors.grey,),
        ListTile(title: Text("Thema 1"), subtitle: Text("Januar 2021, 19:00 - 20:30"),),
        ListTile(title: Text("Thema 2"), subtitle: Text("Januar 2021, 19:00 - 20:30"),),
        ListTile(title: Text("Thema 3"), subtitle: Text("Januar 2021, 19:00 - 20:30"),),
        ListTile(title: Text("Thema 4"), subtitle: Text("Februar 2021, 19:00 - 20:30"),),
        ListTile(title: Text("Thema 5"), subtitle: Text("Januar 2021, 19:00 - 20:30"),),
        ListTile(title: Text("Thema 6"), ),
        ListTile(title: Text("Thema 7"), ),
        ListTile(title: Text("Thema 8"), ),
        ListTile(title: Text("Thema 9"), ),
        ListTile(title: Text("Thema 10"), subtitle: Text("Januar 2021, 19:00 - 20:30"),),
        ListTile(title: Text("Thema 11"), subtitle: Text("Januar 2021, 19:00 - 20:30"),),
        ListTile(title: Text("Thema 12"), ),
        ListTile(title: Text("Klasse A"), trailing: Text("0/4"), tileColor: Colors.grey,),
        ListTile(title: Text("Thema 1"), ),
        ListTile(title: Text("Thema 2"), ),
        ListTile(title: Text("Thema 3"), ),
        ListTile(title: Text("Thema 4"), ),
      ],
    );
  }
  Widget praxis(){
    return Container();
  }
}
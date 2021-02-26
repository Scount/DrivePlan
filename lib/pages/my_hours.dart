import 'package:flutter/material.dart';

class MyHours extends StatefulWidget {
  MyHours({Key key}) : super(key: key);

  static String routeName = '/my_hours';

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
                    child: Text("Theorie"),
                  ),
                  Tab(
                    child: Text("Praxis"),
                  )
                ],
              ),
            ),
            body: TabBarView(children: [theorie(), praxis()])));
  }

  Widget theorie() {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(
            "Grundwissen",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            "7/12",
            style: TextStyle(color: Colors.white),
          ),
          tileColor: Colors.blueAccent,
        ),
        ListTile(
          title: Text("Thema 1"),
          subtitle: Text("Januar 2021, 19:00 - 20:30"),
          tileColor: Colors.blue[50],
        ),
        ListTile(
          title: Text("Thema 2"),
          subtitle: Text("Januar 2021, 19:00 - 20:30"),
          tileColor: Colors.blue[100],
        ),
        ListTile(
          title: Text("Thema 3"),
          subtitle: Text("Januar 2021, 19:00 - 20:30"),
          tileColor: Colors.blue[50],
        ),
        ListTile(
          title: Text("Thema 4"),
          subtitle: Text("Februar 2021, 19:00 - 20:30"),
          tileColor: Colors.blue[100],
        ),
        ListTile(
          title: Text("Thema 5"),
          subtitle: Text("Januar 2021, 19:00 - 20:30"),
          tileColor: Colors.blue[50],
        ),
        ListTile(
          title: Text("Thema 6"),
          tileColor: Colors.blue[100],
        ),
        ListTile(
          title: Text("Thema 7"),
          tileColor: Colors.blue[50],
        ),
        ListTile(
          title: Text("Thema 8"),
          tileColor: Colors.blue[100],
        ),
        ListTile(
          title: Text("Thema 9"),
          tileColor: Colors.blue[50],
        ),
        ListTile(
          title: Text("Thema 10"),
          subtitle: Text("Januar 2021, 19:00 - 20:30"),
          tileColor: Colors.blue[100],
        ),
        ListTile(
          title: Text("Thema 11"),
          subtitle: Text("Januar 2021, 19:00 - 20:30"),
          tileColor: Colors.blue[50],
        ),
        ListTile(
          title: Text("Thema 12"),
          tileColor: Colors.blue[100],
        ),
        Container(
          height: 2,
          color: Colors.grey,
        ),
        ListTile(
          title: Text("Klasse A", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          trailing: Text("0/4", style: TextStyle(color: Colors.white)),
          tileColor: Colors.blueAccent,
        ),
        ListTile(
          title: Text("Thema 1"),
          tileColor: Colors.blue[100],
        ),
        ListTile(
          title: Text("Thema 2"),
          tileColor: Colors.blue[50],
        ),
        ListTile(
          title: Text("Thema 3"),
          tileColor: Colors.blue[100],
        ),
        ListTile(
          title: Text("Thema 4"),
          tileColor: Colors.blue[50],
        ),
      ],
    );
  }

  Widget praxis() {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text("Übungsfahrten", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text("mit Dauer von 45 Minuten", style: TextStyle(color: Colors.white)),
          tileColor: Colors.blueAccent,
        ),
        ListTile(
            title: Text(
              "Fahrstunden",
            ),
            trailing: Text("0"),
            tileColor: Colors.blue[50]),
        Container(
          height: 2,
          color: Colors.grey,
        ),
        ListTile(
          title: Text("Sonderfahrten", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text("mit Dauer von 45 Minuten", style: TextStyle(color: Colors.white)),
          tileColor: Colors.blueAccent,
        ),
        ListTile(title: Text("Überlandfahrten"), trailing: Text("0/5"), tileColor: Colors.blue[50]),
        ListTile(
          title: Text("Autobahnfahrten"),
          trailing: Text("0/4"),
          tileColor: Colors.blue[100],
        ),
        ListTile(title: Text("Nachtfahrten"), trailing: Text("0/3"), tileColor: Colors.blue[50]),
      ],
    );
  }
}

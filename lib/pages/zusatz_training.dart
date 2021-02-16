import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ZusatzTraining extends StatefulWidget {
  ZusatzTraining({Key key}) : super(key: key);

    static String routeName = '/zusatz_training';

  @override
  _ZusatzTrainingState createState() => _ZusatzTrainingState();
}

class _ZusatzTrainingState extends State<ZusatzTraining> {
  var dropDownValue = "Praxispakete";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Zusatz Training"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Theorie",
                  ),
                  Tab(
                    text: "Praxis",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [theorieBody(), praxisBody()],
            )));
  }

  Widget praxisBody() {
    return Container(
      child: Column(
        children: [
          Card(
              child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                    value: dropDownValue,
                    icon: Icon(Icons.arrow_drop_down),
                    items: <String>["Praxispakete", "Wahrnehmungsbilder", "Suchbilder"]
                        .map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        dropDownValue = value;
                      });
                    },
                  )))),
          dropDownValue == "Praxispakete"
              ? Expanded(child: praxisPaketeWidget())
              : (dropDownValue == "Wahrnehmungsbilder"
                  ? Expanded(child: wahrnehmungsBilderWidget())
                  : Expanded(child: suchbilderWidget()))
        ],
      ),
    );
  }

  Map<String, List<String>> praxisPaketeInhalt = {
    "Autobahn": ["Einfahren", "Ausfahren", "Überholen"],
    "Abbiegen": ["Rechtsabbiegen", "Linksabbiegen", "Mehrspurig"],
    "Öffentliche Verkehrsmittel": ["Haltestellen"],
    "Fußgängerüberwege/Bahnübergänge": ["Fußgängerüberwege", "Bahnübergänge", "Wartepflicht"],
    "Vorfahrt": ["rechts vor links", "Verkehrszeichen", "Vorfahrtsstraße"]
  };

  Widget praxisPaketeWidget() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: praxisPaketeInhalt.keys.length,
      itemBuilder: (context, index) {
        var commentWidgets = List<Widget>();
        for (var comment in praxisPaketeInhalt[praxisPaketeInhalt.keys.elementAt(index)]) {
          commentWidgets.add(Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [Image.network('https://picsum.photos/250?image=9', height: 50), Text(comment)],
            ),
          ));
        }
        return Card(
            child: ExpansionTile(
          title: Text(praxisPaketeInhalt.keys.elementAt(index)),
          children: [
            Row(
              children: commentWidgets,
            )
          ],
        ));
      },
    );
  }

  Widget wahrnehmungsBilderWidget() {
    return ResponsiveGridList(
      desiredItemWidth: 150,
      minSpacing: 5,
      children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          .map((e) => Card(
                elevation: 5,
                child: Padding(
                    padding: const EdgeInsets.all(5), child: Image.network('https://picsum.photos/250?image=9')),
              ))
          .toList(),
    );
  }

  Widget suchbilderWidget() {
    return ResponsiveGridList(
      desiredItemWidth: 150,
      minSpacing: 5,
      children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          .map((e) => Card(
                elevation: 5,
                child: Padding(
                    padding: const EdgeInsets.all(5), child: Image.network('https://picsum.photos/250?image=4')),
              ))
          .toList(),
    );
  }

  Widget theorieBody() {
    return SingleChildScrollView(
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(
          child: theorieCard("Prüfungstest", ""),
          sm: 6,
        ),
        ResponsiveGridCol(
          child: theorieCard("Lernbox", "Trainiere deine falschen Fragen"),
          sm: 6,
        ),
        ResponsiveGridCol(
          child: theorieCard("Schwierig markierte Fragen", "Du hast keine Fragen makiert"),
          sm: 6,
        ),
        ResponsiveGridCol(
          child: theorieCard(
              "Variationentrainer", "Trainiere Bild- und Videofragen mit je fünf verschiedenen Variationen"),
          sm: 6,
        ),
        ResponsiveGridCol(
          child: theorieCard("Animationstrainer", "Hier findest du alle Videofragen"),
          sm: 6,
        ),
        ResponsiveGridCol(
          child: theorieCard("Zahlenfragen", "Übe alle Zahlenfragen"),
          sm: 6,
        ),
      ]),
    );
  }

  Widget theorieCard(String title, String subtitle) {
    return Card(
        child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward_ios),
      isThreeLine: true,
    ));
  }
}

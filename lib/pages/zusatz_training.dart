import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ZusatzTraining extends StatefulWidget {
  ZusatzTraining({Key key}) : super(key: key);

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
          DropdownButton(
            value: dropDownValue,
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
          ),
          dropDownValue == "Praxispakete"
              ? Expanded(child: praxisPaketeWidget())
              : (dropDownValue == "Wahrnehmungsbilder"
                  ? Expanded(child: wahrnehmungsBilderWidget())
                  : Expanded(child: suchbilderWidget()))
        ],
      ),
    );
  }

  Widget praxisPaketeWidget() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => ExpansionTile(
        title: Text("Test"),
        children: [
          Row(
            children: [
              Padding(
                child: Image.network('https://picsum.photos/250?image=9',
                    height: 50),
                padding: const EdgeInsets.all(8),
              ),
              Padding(
                child: Image.network('https://picsum.photos/250?image=9',
                    height: 50),
                padding: const EdgeInsets.all(8),
              ),
              Padding(
                child: Image.network('https://picsum.photos/250?image=9',
                    height: 50),
                padding: const EdgeInsets.all(8),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget wahrnehmungsBilderWidget() {
    return ResponsiveGridList(
      desiredItemWidth: 150,
      minSpacing: 10,
      children: [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20
      ].map((e) => Image.network('https://picsum.photos/250?image=9')).toList(),
    );
  }

  Widget suchbilderWidget() {
    return ResponsiveGridList(
      desiredItemWidth: 150,
      minSpacing: 10,
      children: [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20
      ].map((e) => Image.network('https://picsum.photos/250?image=8')).toList(),
    );
  }

  Widget theorieBody() {
    return SingleChildScrollView(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(child: theorieCard("Prüfungstest",""),sm: 6,),
          ResponsiveGridCol(child: theorieCard("Lernbox","Trainiere deine falschen Fragen"),sm: 6,),
          ResponsiveGridCol(child: theorieCard("Schwierig markierte Fragen","Du hast keine Fragen makiert"),sm: 6,),
          ResponsiveGridCol(child: theorieCard("Variationentrainer","Trainiere Bild- und Videofragen mit je fünf verschiedenen Variationen"),sm: 6,),
          ResponsiveGridCol(child: theorieCard("Animationstrainer","Hier findest du alle Videofragen"),sm: 6,),
          ResponsiveGridCol(child: theorieCard("Zahlenfragen","Übe alle Zahlenfragen"),sm: 6,),
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

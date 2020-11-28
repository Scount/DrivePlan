import 'package:flutter/material.dart';

class BonusTraining extends StatefulWidget {
  BonusTraining({Key key}) : super(key: key);

  @override
  _BonusTrainingState createState() => _BonusTrainingState();
}

class _BonusTrainingState extends State<BonusTraining> {
  var dropDownValue = "Praxispakete";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Bonus Training"),
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
          dropDownValue == "Praxispakete" ? praxisPaketeWidget() : (dropDownValue == "Wahrnehmungsbilder" ? wahrnehmungsBilderWidget() : suchbilderWidget())
        ],
      ),
    );
  }

  Widget praxisPaketeWidget() {
    return Container(child: Center(child: Text("Praxis"),),);
  }
  Widget wahrnehmungsBilderWidget() {
    return Container(child: Center(child: Text("Wahrnehmung"),),);
  }
  Widget suchbilderWidget() {
    return Container(child: Center(child: Text("Such"),),);
  }

  Widget theorieBody() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => theorieCard(index),
      shrinkWrap: true,
    );
  }

  Widget theorieCard(int index) {
    return Card(
        child: ListTile(
      title: Text(index.toString()),
      subtitle: Text("Nico stinkt"),
      trailing: Icon(Icons.arrow_forward_ios),
    ));
  }
}

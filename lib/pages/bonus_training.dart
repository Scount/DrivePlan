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
          dropDownValue == "Praxispakete"
              ? Expanded(child: praxisPaketeWidget())
              : (dropDownValue == "Wahrnehmungsbilder"
                  ? Expanded(child:wahrnehmungsBilderWidget())
                  : Expanded(child:suchbilderWidget()))
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
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
      itemBuilder: (BuildContext context, int index) =>
           Padding(child: Image.network('https://picsum.photos/250?image=9', height: 50), padding: const EdgeInsets.all(5),)
    );
  }

  Widget suchbilderWidget() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
      itemBuilder: (BuildContext context, int index) =>
           Padding(child: Image.network('https://picsum.photos/250?image=9', height: 50), padding: const EdgeInsets.all(5),)
    );
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

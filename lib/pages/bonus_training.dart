import 'package:flutter/material.dart';

class BonusTraining extends StatefulWidget {
  BonusTraining({Key key}) : super(key: key);

  @override
  _BonusTrainingState createState() => _BonusTrainingState();
}

class _BonusTrainingState extends State<BonusTraining> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Bonus Training"),
            bottom: TabBar(tabs: [
              Tab(text: "Theorie",),
              Tab(text: "Praxis",),
            ],),
          ),
          body: TabBarView(
            children: [
              theorieBody(),
              praxisBody()
            ],)
        ));
  }
  Widget praxisBody(){
    return Container(
      child: Column(
        children: [
          praxisCard("Praxispakete"),
          praxisCard("Wahrnehmungsbilder"),
          praxisCard("Suchbilder")
        ],
      ),);
  }
  Widget praxisCard(String title){
    return GestureDetector(
      child: Card(
        child: Center(child:Text(title)),
      ),
    );
  }
  Widget theorieBody(){
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index) => theorieCard(index),
      shrinkWrap: true,

    );
  }
  Widget theorieCard(int index){
    return Card(child: ListTile(
      title: Text(index.toString()),
      subtitle: Text("Nico stinkt"),
      trailing: Icon(Icons.arrow_forward_ios),));
  }
}
